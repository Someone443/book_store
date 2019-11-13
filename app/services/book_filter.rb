class BookFilter
  attr_accessor :initial_scope
  attr_reader :current_sort

  SORT_TYPES = {
    'newest' => 'created_at DESC',
    'popular' => 'created_at DESC', # TODO
    'price' => 'price ASC', 
    'price_desc' => 'price DESC'
  }

  def initialize(initial_scope)
    @initial_scope = initial_scope
    @current_sort = 'newest'
  end

  def call(book_params)
    scoped = filter_by_category(initial_scope, book_params[:category_id])
    scoped = sort(scoped, book_params[:sort])
    scoped
  end

  private

  def filter_by_category(scoped, category_id = nil)
    category_id ? scoped.where(category_id: category_id) : scoped
  end

  def sort(scoped, by = nil)
    return scoped unless SORT_TYPES.keys.include?(by)

    @current_sort = by
    scoped.order(SORT_TYPES[by])
  end
end
