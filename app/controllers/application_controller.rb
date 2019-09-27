require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
      erb :'super_hero'
    end
    
    post '/teams' do 
      
      @team = Team.new(params[:name], params[:motto])
      
      params[:team][:members].each do |detail|
        SuperHero.new(detail)
      end
      
      @super_hero = SuperHero.all 
      
      erb :'team'
    end

end
