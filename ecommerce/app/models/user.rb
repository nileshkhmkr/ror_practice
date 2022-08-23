class User < ApplicationRecord
  before_save :downcase_email

  validates :name, presence: true
  validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}, presence: true, uniqueness: true
  validates :password, presence: true

  private

  def downcase_email
    self.email = email.downcase
  end
end