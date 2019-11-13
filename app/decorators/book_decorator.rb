class BookDecorator < ApplicationDecorator
  delegate_all

  def price
    h.number_to_currency(object.price)
  end

  def authors
    object.authors.map { |author| "#{author.first_name} #{author.last_name}" }.join
  end

  def friendly_description # show more button if description is too big
    if object.description.size > 200 # or compare with words count?
      # take first 200 characters .. or words?
      # add 'Read more' link with it's tag code and params (we can add tags here because decorators are view-related) and ... before 'Read more'
      # hide the rest of description under ... some tag with '.collapse' class - %span#demo.collapse Rest of text
      # After click on the Read more -> hide it?
    else
      
    end
  end  
end
