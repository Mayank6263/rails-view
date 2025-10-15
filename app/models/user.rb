class User < ApplicationRecord
  # Include default devise modules. Others available are:        :lockable, :omniauthable
  # ,       , :timeoutable, :trackable, :confirmable
  include Visible #it will make the module method an instance method. ( instanceOfModel.method )
  extend Visible #it will make the module method an class method. ( Model.method )

  validates :username, presence: true, uniqueness: { case_sensitive: false }
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :posts

  def email_required?
    false
  end

  # def msg
  #   "name from model"
  # end

  # Incase of recorverable and confirmable
  # def email_changed?
  #   false
  # end

  # use this instead of email_changed? for Rails = 5.1.x
  def will_save_change_to_email?
    false
  end
end
