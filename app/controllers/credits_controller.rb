class CreditsController < ApplicationController

  def create
    @credit = Credit.create(params.require(:credit).permit(:book_id, :author_id))
    @book = Book.find(@credit.book_id)
    redirect_to @book
  end

  def destroy
    @credit = Credit.find(params[:id])
    @book = Book.find(@credit.book.id)
    @credit.destroy
    redirect_to @book
  end
end
