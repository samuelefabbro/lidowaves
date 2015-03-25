require 'nokogiri'
require 'open-uri'
require 'sinatra'


def h_onda
	doc = Nokogiri::HTML(open("http://93.62.201.234/reali/reale.php"))
	@h_onda = doc.css('td')[15].inner_html
	erb :index
end

# h_onda_max = doc.css('td')[13].inner_html

get '/' do
	h_onda
end

  