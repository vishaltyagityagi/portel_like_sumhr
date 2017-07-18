class Employee < ActiveRecord::Base
	  resourcify
	DEPARTMENT = ["Customer Support", "Information Technology", "Production", "Office Boy", "Manager"]
	TASK = ["Working", "Out For lunch", "Break(Out for office)", "Out for office work", "Ideal"]
	belongs_to :user
has_many :reimbursements
	
end
