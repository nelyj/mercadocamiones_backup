class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # attr_accessible :title, :body
  has_many :products

  def self.email_exists_but_email_is_unconfirmed?(username)
    email = find_by_email(username)
    return email.email_unconfirmed? if email
    false
  end
end
