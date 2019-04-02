class User < ApplicationRecord
    has_many :scores
    has_many :racecars, through: :scores
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
