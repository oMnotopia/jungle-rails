class User < ApplicationRecord

  has_secure_password

  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :name, presence: true
  validates :email, presence: true

  validates :password, length: { minimum: 5 }

  validates :email, presence: true,
    uniqueness: { case_sensitive: false }

  def self.authenticate_with_credentials(email ,password)
    # If the user exists AND the password entered is correct.
    email_no_spaces = email.strip()
    email_downcase = email_no_spaces.downcase
    user = find_by_email(email_downcase)
    if user && user.authenticate(password)
      return user
    else
      return nil
    end  
  end
end
