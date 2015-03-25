require 'nokogiri'
require 'open-uri'
require 'sinatra'


doc = Nokogiri::HTML(open("http://93.62.201.234/reali/reale.php"))

# search = doc.css('td').children

h_onda_max = doc.css('td')[13].inner_html
h_onda = doc.css('td')[15].inner_html


get '/' do
	"Hello World"
	# h_onda
end