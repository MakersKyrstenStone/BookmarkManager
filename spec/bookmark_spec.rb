require 'bookmark'
require 'pg'

describe Bookmarks do
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("Insert Into bookmarks (url) VALUES('http://www.makersacademy.com');")
      connection.exec("Insert Into bookmarks (url) VALUES('http://www.nonsensestuff.co.uk');")
      connection.exec("Insert Into bookmarks (url) VALUES('http://www.twitter.com');")
      connection.exec("Insert Into bookmarks (url) VALUES('http://www.google.com');")

      bookmarks = Bookmarks.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.nonsensestuff.co.uk")
      expect(bookmarks).to include("http://www.twitter.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end
end
