require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")

#Nokogiri::HTML(html) 

doc = Nokogiri::HTML(html) 

courses = doc.css(".title-oE5vT4")
#binding.pry
courses.each do |course|
    #binding.pry
  puts course.text.strip
end 