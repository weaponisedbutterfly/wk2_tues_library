class Library

  attr_reader :name, :books, :people

  def initialize(name)
    @name = name
    @books = {}
    @people = {}
  end

  def add_book(book)
    @books[book.title] = book
  end

  def list_books()
    if @books.empty?
      "There are no books in the library at present."
    else
      book_strings = @books.map do |key, book|
        book.pretty_string
    end
      book_strings.join("\n")
    end
  end

  # def list_people()
  #   if @people.empty?
  #     "no people here"
  #   else
  #     people_strings = @people.map do |key, person|
  #       person.pretty_string
  #     end
  #     people_strings.join("\n")
  #   end
  # end

  def add_person(person)
    @people[person.name] = person
  end

  def lend(person_name, book_title)
    person = @people[person_name]
    book = @books.delete(book_title)
    person.borrow(book)
  end

  # def restock_book
  #   # @books[book.title] = book
  #   puts "This is your return confirmation"
  # end

  def return(person_name, book)
    @books[book.title] = book
    @people[person_name].delete_book(book)
    # puts "This is "
  end

  def inventory
    @people.each do |name, person|
      puts person.list_borrowed_books
    end
  end

  def list_books
    if @books.empty?
    "We really need to buy some books"
    else 
      titles = @books.map { |key, book| book.title }
      titles.join("\n")
    end
  end

  def list_people
    people = @people.map do |name, person|
       person.pretty_string
    end
    people.join("\n")
  end

  # def list_people
  #   if 
  # end

end