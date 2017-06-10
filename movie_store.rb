require 'movie'
require 'yaml/store'

store = YAML::Store.new('test.yml')

test1 = Movie.new
test1.title = "aaa"
test1.director = "bbb"
test1.year = 100

test2 = Movie.new
test2.title = "ccc"
test2.director = "ddd"
test2.year = 200

store.transaction do
  store[0] = test1
  store[1] = test2
  p store[1]
end
