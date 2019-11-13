class PagesController < ApplicationController
  before_action :prepare_categories
  
  def home
    @latest_books = Book.latest
    @best_sellers = Book.best_sellers
  end
end
