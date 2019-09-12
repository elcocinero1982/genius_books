require "nokogiri"
require "open-uri"
require "pry"
require_relative "book"
module GeniusBooks
  class Scraper
    doc=Nokogiri::HTML(open("https://www.powells.com/25-books-to-read-before-you-die"))
    doc.css(a),("attr").each do |card|
  def self.scrape_books



     end
   end
  end






GeniusBooks::Scraper.get_books
