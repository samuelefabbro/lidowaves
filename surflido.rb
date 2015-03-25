require 'nokogiri'
require 'open-uri'
require 'sinatra'


def piattaforma
	@doc = Nokogiri::HTML(open("http://93.62.201.234/reali/reale.php"))
end

def h_onda 
	piattaforma
	@h_onda = @doc.css('td')[15].inner_html
end

def h_onda_max
	piattaforma
	@h_onda_max = @doc.css('td')[13].inner_html
end

def vento
	piattaforma
	@vento = @doc.css('td')[7].inner_html
end

def dir_vento
	piattaforma
	@dir_vento = @doc.css('td')[11].inner_html
end

get '/' do
	h_onda
	h_onda_max
	vento
	dir_vento
	erb :index
end

  