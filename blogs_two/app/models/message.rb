class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  validates :author, :message, presence: true
  has_many :coments, as: :commentable
end

