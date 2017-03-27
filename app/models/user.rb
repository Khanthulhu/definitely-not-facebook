class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :likes
  has_and_belongs_to_many :friends

  before_save do 
    self.email = email.downcase
    self.name = name.downcase
  end
  
  validates :name, :email, presence: true, 
                           uniqueness: { case_sensitive: false }
end
