

require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://www.comune.venezia.it/flex/cm/pages/ServeBLOB.php/L/IT/IDPagina/2104"))

@data1 = doc.css('th')[3].inner_html
@valore1 = doc.css('td')[1].inner_html

@data2 = doc.css('th')[4].inner_html
@valore2 = doc.css('td')[3].inner_html

@data3 = doc.css('th')[5].inner_html
@valore3 = doc.css('td')[5].inner_html

@data4 = doc.css('th')[6].inner_html
@valore4 = doc.css('td')[7].inner_html

@data5 = doc.css('th')[7].inner_html
@valore5 = doc.css('td')[9].inner_html


puts data1
puts valore1
puts data2
puts valore2
puts data3
puts valore3
puts data4
puts valore4
puts data5
puts valore5