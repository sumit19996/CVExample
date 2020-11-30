class EmployeeDetailsController < ApplicationController
	def create
		@employee = Employee.find(params[:employee_id])
    @employee_detail = @employee.employee_details.create(employee_detail_params)
    redirect_to employee_path(@employee)
  end
 
  private
    def employee_detail_params
      params.require(:employee_detail).permit(:address, :city, :pincode)
    end
end
