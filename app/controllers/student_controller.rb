class StudentController < ApplicationController


	def new
         @student = Student.new
            puts "nnnn"
    end
    
	def index
		@students=Student.all
	end

	def show
		@student = Student.find(1)
	end

	def create
		 #render plain: params[:student].inspect
		 @student = Student.new(student_params)
 
         if @student.save
            puts "iii"
              redirect_to '/student/show'
            
        else
            puts "ooo"
            render 'new'
      end	
end

def edit
	@student=Student.find(params[:id])
end
 
private
  def student_params
    params.require(:student).permit(:firstname, :lastname,:emailid,:mobilenumber,:date_of_birth,:password,:password_confirmation)
  end

end