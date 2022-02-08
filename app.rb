require 'sinatra/base'
require 'sinatra/reloader'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Bookmark Manager'
  end
  get '/bookmarks' do
    bookmark_list = [
    "http://www.makersacademy.com",
    "http://www.destroyallsoftware.com",
    "http://www.google.com"
    ]
    bookmark_list.join
  end
  
  run! if app_file == $0
end
