class User < ActiveRecord::Base
has_many :employees
has_many :reimbursements
has_one :salary
has_many :homes

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
