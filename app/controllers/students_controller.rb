class StudentsController < ApplicationController
	def new
		 @student = Student.new
	end
	def index
	end

	def show
		@student = Student.find(params[:id])
	end
	def create
		 #render plain: params[:student].inspect
		 @student = Student.new(student_params)
 
	 	 if @student.save
  		redirect_to @student
  	else
  		render 'new'
  	end

  		
end
 
private
  def student_params
    params.require(:student).permit(:firstname, :lastname,:emailid,:mobilenumber,:date_of_birth,:password,:password_confirmation)
  end

end
