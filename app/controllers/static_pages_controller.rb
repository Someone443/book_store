class StaticPagesController < ApplicationController
  def home
    @latest_books = Book.latest
    @best_sellers = Book.best_sellers
  end
end
