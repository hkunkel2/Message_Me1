class User < ApplicationRecord
    validates :username, presence: true, uniqueness: { case_sensittive: false}, length: { in: 3..15 }
    has_many :messages
    has_secure_password
end
