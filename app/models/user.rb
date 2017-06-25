class User < ApplicationRecord
  has_many :images

  def self.find_or_create_from_auth_hash(auth_hash)
    puts(auth_hash)
    User.find_or_create_by(email: auth_hash["info"]["email"])
  end
end
