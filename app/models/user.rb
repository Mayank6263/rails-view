class User < ApplicationRecord
  # Include default devise modules. Others available are:        :lockable, :omniauthable
  # ,       , :timeoutable, :trackable 
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  devise :database_authenticatable, :registerable, :validatable, :recoverable, :rememberable 
  has_many :posts


  def email_required?
    false
  end


# Incase of recorverable and confirmable
  # def email_changed?
  #   false
  # end
  
  # use this instead of email_changed? for Rails = 5.1.x
  def will_save_change_to_email?
    false
  end
end
