require 'pry-byebug'
require_relative './library'
require_relative './book'
require_relative './person'

#TODO create library
library = Library.new "Code Clan Library"
library.add_book(Book.new(title: "The Hobbit", genre: "Fantasy"))
library.add_book(Book.new(title: "Feersum Endjinn", genre: "Science Fiction"))
library.add_book(Book.new(title: "Histories", genre: "History"))
library.add_book(Book.new(title: "To Kill a Mockingbird", genre: "Fiction"))
library.add_book(Book.new(title: "A Brief History of Time", genre: "Non-Fiction"))

#TODO create book

book_1 = Book.new({title: 'Errand', genre: 'Fantasy'})

library.add_book(book_1)
#TODO list books
# puts "All book #{library.list_books}"
#TODO create person
person_1 = Person.new("Jane")
# person_1.borrow(book_1)
library.add_person(person_1)
library.add_person(Person.new('Fred'))
library.add_person(Person.new('Wilma'))
library.add_person(Person.new('Barney'))
library.add_person(Person.new('Betty'))
#TODO list people
# puts "All people #{library.list_people}"
#TODO lend book
person_name = "Jane"
book_title = "Errand"
library.lend(person_name, book_title)

person_name = "Fred"
book_title = "To Kill a Mockingbird"
library.lend(person_name, book_title)
puts "Fred has borrowed To Kill a Mockingbird"
#TODO return book
# person_name = "Wilma"
# book_title = "The Hobbit"
library.return(person_name, book_1) 
#TODO list borrowed books
library.inventory

puts "All books \n #{library.list_books}"

puts "The members of this library are \n #{library.list_people}"

binding.pry;''
