class User < ApplicationRecord
  has_secure_password
  
  before_save :downcase_email

  PASSWORD_FORMAT = /\A
    (?=.{6,})          # Must contain 6 or more characters
    # (?=.*\d)           # Must contain a digit
    # (?=.*[a-z])        # Must contain a lower case character
    # (?=.*[A-Z])        # Must contain an upper case character
    # (?=.*[[:^alnum:]]) # Must contain a symbol
  /x


  validates :name, presence: true
  validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}, presence: true, uniqueness: true
  validates :password, format: { with: PASSWORD_FORMAT }, confirmation: true

  private

  def downcase_email
    self.email = email.downcase
  end
end