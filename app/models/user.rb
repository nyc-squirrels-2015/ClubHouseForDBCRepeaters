
class User < ActiveRecord::Base
  has_secure_password

  has_many :posts
  has_many :comments

  def self.authenticate(name, password)
    auth = User.find_by(name: name).try(:authenticate, password)
    auth
  end
end

