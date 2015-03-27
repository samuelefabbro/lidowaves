

require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://93.62.201.235/maree/ESPORTAZIONI/DATI/Piattaforma_CNR.html"))

h_onda = doc.css('td')[160].text

puts h_onda