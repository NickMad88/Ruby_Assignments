class User < ActiveRecord::Base
    validates :first_name, :last_name, presence: true, length: { minimum: 2 }
    has_many :messages
    has_one :address
end

