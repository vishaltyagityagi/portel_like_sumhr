class Reimbursement < ActiveRecord::Base
	belongs_to :user
	belongs_to :employee
end
