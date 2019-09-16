
module GeniusBooks
class Scraper
  def self.get_books
     doc=Nokogiri::HTML(open("https://www.powells.com/25-books-to-read-before-you-die"))
     doc.css('.bookwrapper').each do |card|

       title=card.css('img').attr('alt').value
       link=card.css('a').attr('href').value
       author= card.css('.author').text
       description=card.css('.blurb').text
       GeniusBooks::Book.new(title,link,author,description)
     end
    end
   end
 end
