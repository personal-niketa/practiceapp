class BooksController < ApplicationController
  before_action :set_book, only: [:edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def edit
  end

  def update
    begin  
      if @book.update_attributes(book_params)
        flash[:success] = "#{@book.name} updated successfully."
      else
        flash[:danger] = "Something went wrong."  
      end  
    rescue Exception => e
      flash[:danger] = "something went wrong. Here is the error:#{e.message}"
    end
    redirect_to books_path
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params) 
    if @book.save
      flash[:success] = "Book Added successfully."
    else
      flash[:danger] = "Something went wrong."  
    end
    redirect_to books_path
  end

  def destroy
    if @book.destroy
      flash[:success] = "Book deleted successfully"
    end
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:name,:price)
  end

  def set_book
    @book = Book.find_by(id: params[:id])
  end

end
