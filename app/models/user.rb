class User < ApplicationRecord
  include ActiveModel::SecurePassword
  has_secure_password
end
