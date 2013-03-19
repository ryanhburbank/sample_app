# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  remember_token  :string(255)
#  admin           :boolean          default(FALSE)
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password

  before_save { email.downcase! } 
  before_save :create_remember_token
  #bang method, equivalent to { |user| user.email = email.downcase}
  # or { |user| email.downcase!}

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, 
                    format: { with: VALID_EMAIL_REGEX },
  					        uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  #presence is true only if (arg) != blank
  #gives validates method :name arg, then runs presence &
  #length methods, length takes maximum hash, then returns
  #true only is (arg) <= maximum
  private 
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end

#note: must run bundle exec annotate whenever data
#model changes to keep anotations up-to-date

#application code for email format validation uses regex 
#to define the format, along with the :format arg to the
#validates method

#VALID_EMAIL_REGEX is a contsant, indicated by starting with
#a capital letter, only email addresses that match the pattern
#will be considered valid, as a constant, VALID_EMAIL_REGEX
#cannot change in value
