class User < ActiveRecord::Base
   validates :username, :password, presence: true

   has_secure_password

   has_many :reviews

end
