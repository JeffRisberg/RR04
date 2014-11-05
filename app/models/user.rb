class User < ActiveRecord::Base
	
	#attr_accessible :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_attached_file :attach

  # Setup accessible (or protected) attributes for your model
  #attr_accessible :fname, :lname, :email, :password, :password_confirmation, :remember_me
  
  has_many :user_roles, :dependent => :destroy
  has_many :roles, :through => :user_roles

  # does this user have the specified role in its role list?
  def has_role?(role_sym)
    roles.any? { |role| role.name.underscore.to_sym == role_sym.downcase }
  end
  
end
