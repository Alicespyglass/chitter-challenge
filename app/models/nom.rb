require 'data_mapper'
require 'dm-postgres-adapter'
require 'dm-migrations'

DataMapper.setup(:default, 'postgres://localhost/nom_diaries_test')

class Nom
  include DataMapper::Resource

  property :id, Serial
  property :nom, String

end


DataMapper.finalize
DataMapper.auto_upgrade!