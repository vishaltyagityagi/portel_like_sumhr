class ReimbursementsController < ApplicationController
	def new
		@reimbursement= current_user.reimbursements.new
	end

	def index
		@reimbursements = current_user.reimbursements.order('id DESC')
		
	end
	def create
		@reimbursement= current_user.reimbursements.create(permit_params)
		@reimbursements = current_user.reimbursements.order('id DESC')

	end

	def permit_params
		params.require(:reimbursement).permit!
	end
end
