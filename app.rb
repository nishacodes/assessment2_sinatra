require 'bundler'
Bundler.require

set :database, "sqlite3:///spacecats.db"

module Assignment
  class App < Sinatra::Application
    
   
   
    get '/' do
      erb :index
    end

    helpers do 
      def simple_partial(template)
        erb template
      end
    end

  end
end

