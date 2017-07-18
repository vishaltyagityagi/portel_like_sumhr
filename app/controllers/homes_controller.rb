class HomesController < ApplicationController
	def new
		@leave = current_user.homes.build
	end
	def index
		@leaves = current_user.homes.order('id DESC')
		
	end
	def create
		@leave= current_user.homes.create(permit_params)
		@leaves = current_user.homes.order('id DESC')

	end

	def update
		binding.pry
		@leave = current_user.homes.find(params[:id])
		@leave.update(permit_params)
	end

	def permit_params
		params.require(:home).permit!
	end
end
