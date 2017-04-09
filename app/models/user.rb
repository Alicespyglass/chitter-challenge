require 'bcrypt'
require 'dm-validations'

class User

  include DataMapper::Resource

  property :id, Serial

  property :email, String, format: :email_address, required: true

  property :nom_name, String
  property :password_digest, Text

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

attr_reader :password
attr_accessor :password_confirmation

validates_confirmation_of :password

end
