require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Bookmark Manager'
  end
  get '/bookmarks' do
    @bookmarks_list = Bookmarks.all
   erb :'index'
  end
  
  run! if app_file == $0
end
