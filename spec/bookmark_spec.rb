require 'bookmark'

describe Bookmarks do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmarks.all

      expect(bookmarks).to include("http://www.makersacadamy.com")
      expect(bookmarks).to include("http://www.nonsensestuff.co.uk")
      expect(bookmarks).to include("http://www.twitter.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end
end
