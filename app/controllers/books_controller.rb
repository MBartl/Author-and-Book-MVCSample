class BooksController < ApplicationController

  def show
    @book = Book.find(params[:id])
    @create_credit = Credit.new
  end

  def index
    @books = Book.all
  end

end
