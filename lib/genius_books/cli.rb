require "pry"
require_relative "../genius_books"
module GeniusBooks
  class Cli
     def call
       GeniusBooks::Scraper.get_books
       list_books
       menu
       goodbye
     end

  def list_books
    puts "Welcome to the 25 books you need to read before you die"
      GeniusBooks::Book.all.each.with_index(1) do |bookobject,index|
        puts "#{index}. #{bookobject.title}"

      end
  end
  def menu
    puts "Enter the number of the book you want to read from"
     input = gets.strip.downcase
       puts ""
         if input == "1"
      book.get_books("first")
         elsif input == "2"
        book.get_books("second")
         elsif input == "3"
      book.get_books("third")
         elsif input == "4"
        book.get_books("four")
         elsif input == "5"
  book.get_books("fifth")
         elsif input == "list"
      list_books
         else
        puts "Not sure what you want, type list or exit."
          end
        end


  def goodbye
    puts "See you next time for more books!"
       end
      end
    end
    GeniusBooks::Cli.new.call
