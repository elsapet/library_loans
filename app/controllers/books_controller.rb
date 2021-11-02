class BooksController < ApplicationController
  before_action :set_book, except: %i[create index]

  def create
    @book = Book.create(create_params)
  end

  def update
    @book.update(update_params)
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def create_params
    params.require(:book).permit(:author_id, :title, :year)
  end

  def update_params
    params.require(:book).permit(:on_loan)
  end
end
