require 'nokogiri'
require 'open-uri'
require 'sinatra'






get '/' do
	doc = Nokogiri::HTML(open("http://93.62.201.234/reali/reale.php"))
	h_onda = doc.css('td')[15].inner_html
	# h_onda_max = doc.css('td')[13].inner_html
	h_onda
end