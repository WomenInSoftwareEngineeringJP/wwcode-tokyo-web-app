class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
  validates_presence_of :name

  def password_required?
    false
  end

  def password_confirmation_required?
    false
  end
end
