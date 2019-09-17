
module GeniusBooks
  class Cli
     def call
       GeniusBooks::Scraper.get_books
       list_books

       menu

     end

  def list_books
    puts "Welcome to the 25 books you need to read before you die"
      GeniusBooks::Book.all.each.with_index(1) do |bookobject,index|
        puts "#{index}. #{bookobject.title}"

      end
  end

  def menu
    input = ""
  while input != "exit"

   puts "Enter the number of the book you want to read from"
     input = gets.strip
       puts ""
       digit = 1..25
         if digit.include?(input.to_i)
            GeniusBooks::Book.all[input.to_i - 1]
      books=[]
        puts "display_book_info"
         elsif input.downcase == "list"
      list_books
    #elsif input.downcase == "exit"

         else
        puts "Not sure what you want, type list, exit or number of the book you want more info."
          end

        end
          goodbye

      end


  def goodbye
    puts "See you next time for more books!"
       end
      end
    end
