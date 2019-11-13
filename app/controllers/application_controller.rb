class ApplicationController < ActionController::Base
  include Pagy::Backend

  private

  def prepare_categories
    @categories = Category.all
  end
end
