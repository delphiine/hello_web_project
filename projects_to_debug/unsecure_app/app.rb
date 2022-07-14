require 'sinatra/base'
require "sinatra/reloader"

class Application < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    return erb(:index)
  end

  post '/hello' do
    @name = params[:name]
    #[^a-zA-Z\s]
    if @name.match?(/[^a-zA-Z\s]/)
      return "This is an invalid string."
    else
      return erb(:hello)
    end
  end
end
