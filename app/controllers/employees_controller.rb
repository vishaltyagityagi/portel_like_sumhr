class EmployeesController < ApplicationController
	def index
		@employees = current_user.employees.order('id DESC')
	end

	def new
		@employee = current_user.employees.new
	end
	def create
		@employee = current_user.employees.create(permit_params)
	end


	def show
		@employee = Employee.find(params[:id])
	end

	

	def after_sign_in
		a =current_user.last_sign_in_at.to_time
		b = Time.now
		c = (a - b)/60
		c.abs
	end

	def permit_params
		params.require(:employee).permit!
	end
end
