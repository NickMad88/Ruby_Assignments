class Post < ActiveRecord::Base
  has_many :messages
  belongs_to :user
  belongs_to :blog
  validates :content, :title, presence: true
  has_many :coments, as: :commentable
end
