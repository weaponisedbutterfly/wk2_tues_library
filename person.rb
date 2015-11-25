class Person
  attr_reader :name, :books
  def initialize(name)
    @name = name
    @books = {}
  end

  def pretty_string
    "'#{@name}' has #{@books.size} books borrowed at the moment."
  end

  def borrow(book)
    @books[book.title] = book
  end

  def delete_book(book)
    # puts book.class 
     @books.delete(book.title)
     puts "I have returned my book!"
  end

  def list_borrowed_books
    @books.each do |title, book|
      puts title
    end
  end

end
