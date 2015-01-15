class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_validation :make_first_user_admin!
  def make_first_user_admin!
	if User.count == 0
	  self.admin = true
	end
  end
end
