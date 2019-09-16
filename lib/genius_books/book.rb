module GeniusBooks

  class Book
    attr_accessor :title, :link, :author, :description
    @@all=[]
    def initialize(title,link,author,description)
    @title=title
    @link=link
    @author=author
    @description=description
    @@all << self

     end
 #title,author,descripyion and link define
    def self.all
     @@all
    end
  end
end
