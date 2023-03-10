class User < ApplicationRecord
  extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: [:viewer, :contributor, :manager, :admin]
  after_initialize :set_default_role, :if => :new_record?
  def set_default_role
    self.role ||= :viewer
  end  
end
