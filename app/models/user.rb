class User < ApplicationRecord
    has_secure_password

    validates :username, uniqueness: true, presence: true, length: {in: 4..25}
    validates :email, uniqueness: true, presence: true,format: {with: /\A(?<username>[^@\s]+)@((?<domain_name>[-a-z0-9]+)\.(?<domain>[a-z]{2,}))\z/i}
    validates :password, length: {in: 8..250}
end
