require 'pg'

def setup_test_database
  p "setting up a test database now...."

  connection = PG.connect(dbname: 'bookmark_manager_test')

  # clears the table in bookmarks
  connection.exec("TRUNCATE bookmarks;")
end
