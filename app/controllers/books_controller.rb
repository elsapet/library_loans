class BooksController < ApplicationController
  def index
  end

  def create
    @book = Book.create(
      title: "Blah Blah #{Time.now}",
      year: 2021,
      author: Author.last
    )

    respond_to do |format|
      format.turbo_stream
    end
  end
end
