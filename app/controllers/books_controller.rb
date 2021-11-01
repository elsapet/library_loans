class BooksController < ApplicationController
  def index
  end

  def create
    @book = Book.create(
      title: "Blah Blah #{Time.now}",
      year: 2021,
      author: Author.last
    )

    # render turbo_stream: turbo_stream.append("all_books", partial: "book", locals: { book: @book })
  end
end
