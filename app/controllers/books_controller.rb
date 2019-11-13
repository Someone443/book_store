class BooksController < ApplicationController
  before_action :prepare_categories

  ITEMS_PER_PAGE = 8

  def show
    @book = Book.find_by(id: params[:id], category: book_params[:category_id]).decorate
  end

  def index
    @book_filter = BookFilter.new(Book.all)
    @pagy, books = pagy(@book_filter.call(book_params), items: ITEMS_PER_PAGE)
    @books = books.decorate
    @category = Category.find(book_params[:category_id]) if book_params[:category_id]
  end

  private

  def book_params
    params.permit(:category_id, :id, :page, :sort)
  end
end
