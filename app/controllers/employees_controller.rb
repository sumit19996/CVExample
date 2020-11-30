class EmployeesController < ApplicationController
	layout "employee"
	rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
	def index
		@employees = Employee.all
		@text= params[:comment]
	end

	def show
		@employee = Employee.find(params[:id])
	end
	def profile
		@employee = Employee.find(1)
	end
	def new
		@employee = Employee.new
	end

	def edit
		@employee =Employee.find(params[:id])
	end

	def create
		@employee = Employee.create(employee_params)
		if @employee.save
			redirect_to employees_path
		else
			flash.now[:error] = "Error: Could not save Employee!!!"
			render 'new'
		end
	end

	def update
		@employee =Employee.find(params[:id])
		if @employee.update(employee_params)
			redirect_to @employee
		else
			render 'edit'
		end
	end

	def destroy
		@employee = Employee.find(params[:id])
		@employee.destroy
		redirect_to employees_path
	end

	private
		def employee_params
			params.require(:employee).permit(:name,:designation,:salary)
		end

	private
     def record_not_found
      render plain: "Nahi milra yaar bhai ye wala employee", status: 404
    end
end
