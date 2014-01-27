class User < ActiveRecord::Base
  before_save{ self.email = email.downcase} # this makes the email lowercase prior to saving
  validates :name, presence: true, length: { maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
                      # /\A[\w+\-.]+@[a-z\d\-]+s(\.[a-z]+)*\.[a-z]+\z/i

                      
  validates :email, presence: true, 
                    format: { with: VALID_EMAIL_REGEX}, 
                    uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password, length: {minimum: 6 }
  
  # has_secure_password
 
  # too_long: "%{count} characters is the maximum allowed" } maximum characters allowed
end
