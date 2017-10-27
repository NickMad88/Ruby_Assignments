class User < ActiveRecord::Base
  has_secure_password
  has_many :shoes
  has_many :purchases
  has_many :buyers, through: :purchases, source: :users


  EMAIL_REGEX = /\A[A-Za-z0-9\.]+@[A-Za-z]+\.[A-Za-z]{3}/
  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  before_save :downcase_email

  def downcase_email
    self.email.downcase!
  end

end
