class User < ApplicationRecord
  has_many :cars, dependent: :destroy
  has_one :address, dependent: :destroy
  has_and_belongs_to_many :books
  has_many :enrollments
  has_many :games, through: :enrollments
  

  ## Scope is being used as query builder. ActiveRecord coverts scopes into class methods.0

  scope :adults1, -> { where('age > 18') }
  scope :minor1, -> { where('age < 18') }
  scope :male_members, -> { where(gender: 'male') }
  scope :find_members_of_age, -> age_val { where(age: age_val) if age_val.present?}

  def self.minors
    where('age < 18')
  end

  def self.adults
    where('age > 18')
  end

  def self.female_members
    where(gender: 'female')
  end

  def self.male_adults
    adults1.male_members
  end

  def self.female_adults
    adults.female_members
  end

  def self.find_member_of_age(age_val)
    where(age: age_val) if age_val.present?
  end
end
