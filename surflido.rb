require 'nokogiri'
require 'open-uri'
require 'sinatra'


def piattaforma
	# @doc = Nokogiri::HTML(open("http://93.62.201.234/reali/reale.php"))
	@doc = Nokogiri::HTML(open("http://93.62.201.235/maree/ESPORTAZIONI/DATI/Piattaforma_CNR.html"))
end


def data
	piattaforma
	@data = @doc.css('td')[0].text
end


def h_onda 
	piattaforma
	@h_onda = @doc.css('td')[160].text
end

def h_onda_inizio
	piattaforma
	@h_onda_inizio = @doc.css('td')[6].text
end

def differenza

	@cala = "cala"
	@cresce = "cresce"
	@fermo = "fermo"	

	@x = if (@h_onda_inizio > @h_onda)
		@cala
	elsif (@h_onda_inizio < @h_onda)
		@cresce
	else
		@fermo
    end	

end



def h_onda_max
	piattaforma
	@h_onda_max = @doc.css('td')[161].text
end

def h_onda_max_inizio
	piattaforma
	@h_onda_max_inizio = @doc.css('td')[7].text
end

def differenza_h_max

	@cala = "cala"
	@cresce = "cresce"
	@fermo = "fermo"	

	@y = if (@h_onda_max_inizio > @h_onda_max)
		@cala
	elsif (@h_onda_max_inizio < @h_onda_max)
		@cresce
	else
		@fermo
    end	

end

def vento
	piattaforma
	@vento = @doc.css('td')[158].text
end

def vento_inizio
	piattaforma
	@vento_inizio = @doc.css('td')[4].text
end


def differenza_vento

	@cala = "cala"
	@cresce = "cresce"
	@fermo = "fermo"	

	@z = if (@vento_inizio > @vento)
		@cala
	elsif (@vento_inizio < @vento)
		@cresce
	else 
		@fermo
    end	

end

def dir_vento
	piattaforma
	@dir_vento = @doc.css('td')[157].text
	# @gradi = @dir_vento.chomp(' GN')
end

get '/' do
	data
	h_onda
	h_onda_max
	vento
	dir_vento
	h_onda_inizio
	differenza
	h_onda_max_inizio
	differenza_h_max
	vento_inizio
	differenza_vento
	erb :index
end

  