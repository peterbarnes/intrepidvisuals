class Admin
  include Mongoid::Document
  include Mongoid::Timestamps
  include ActiveModel::SecurePassword

  field :name,            :type => String
  field :email,           :type => String
  field :admin,           :type => Boolean, default: true
  field :password_digest, :type => String
  has_secure_password
end
