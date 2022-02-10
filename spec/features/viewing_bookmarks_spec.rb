require 'pg'

feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end
end

feature 'Viewing bookmarks' do
  scenario 'A user can see current bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # add test data
    connection.exec("INSERT INTO bookmarks Values(1, 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks Values(2, 'http://www.nonsensestuff.co.uk');")
    connection.exec("INSERT INTO bookmarks Values(3, 'http://www.twitter.com');")
    connection.exec("INSERT INTO bookmarks Values(4, 'http://www.google.com');")

    visit('/bookmarks')

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.nonsensestuff.co.uk"
    expect(page).to have_content "http://www.twitter.com"
    expect(page).to have_content "http://www.google.com"
  end
end
