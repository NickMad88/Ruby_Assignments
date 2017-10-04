class User < ActiveRecord::Base
    validates :first_name, :last_name, presence: true, length: { minimum: 2 }
    validates_numericality_of :age, less_than: 150, greater_than_or_equal_to: 10
    validates 

end
