require 'data_mapper'
require 'dm-postgres-adapter'

require_relative './models/nom'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper::Logger.new($stdout, :debug)
