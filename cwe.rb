# Controller/Routes
class CWE < Sinatra::Base

  # Sinatra configuration
  enable :static
  set :public, 'public'

  # Haml configuration
  set :haml, {:format => :html5}
  
  get '/css/:sheet.css' do
    scss params[:sheet].to_sym
  end
  
  get '/' do
    erb :index
  end

  not_found do
    redirect '/'
  end

end
