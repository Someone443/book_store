AUTHORS_COUNT = 5
BOOKS_COUNT = 10

AuthorsBook.destroy_all
Book.destroy_all
Author.destroy_all
Category.destroy_all

Category.create([{ name: 'Mobile development' }, { name: 'Photo' }, { name: 'Web design' }, { name: 'Web development' }])

AUTHORS_COUNT.times do
  Author.create(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name)
end

BOOKS_COUNT.times do
  Book.create(title: FFaker::Book.title, short_description: FFaker::Lorem.phrase, 
              description: FFaker::Book.description, price: 29.90, category: Category.order('RANDOM()').first)
end

Book.find_each do |book|
  AuthorsBook.create(author: Author.order('RANDOM()').first, book: book)
end
