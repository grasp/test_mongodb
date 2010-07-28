# To change this template, choose Tools | Templates

require 'rubygems'
require 'iconv'
require 'mongo_mapper'
require 'mongo'
require "lib/load_city.rb"
require 'lib/city_tree.rb'

    MongoMapper.connection = Mongo::Connection.new('127.0.0.1')
    MongoMapper.database = 'test_mongodb_development'
class TestMain
  include TestMongodb
  def test()
    puts "Hello World"
  end 
end


