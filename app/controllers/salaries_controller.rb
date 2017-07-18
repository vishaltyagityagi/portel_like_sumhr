class SalariesController < ApplicationController
	def index
		@salary = current_user.salary
		
	end
end
