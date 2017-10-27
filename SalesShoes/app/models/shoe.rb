class Shoe < ActiveRecord::Base
  belongs_to :user
  has_one :purchase
  validates :name, :price, presence: true

end
