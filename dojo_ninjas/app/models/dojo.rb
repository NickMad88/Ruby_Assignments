class Dojo < ActiveRecord::Base
    validates :name, :city, :state, presence: true
    validates :state, length: {maximum: 2}
    has_many :ninja
end
