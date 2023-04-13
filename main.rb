require './person'
require './capitalize_decorator'
require './trimmer_decorator'
require './book'
require './rental'
require './classroom'

# Test decorators

person = Person.new(22, 'maximilianus')
puts person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name

# Test book rentals by persons

book = Book.new('Art of War', 'Sun Tzu')
book.add_rental('2023-04-13', person)
puts book.rentals.map(&:person).map(&:name)
puts person.rentals.map(&:book).map(&:title)
