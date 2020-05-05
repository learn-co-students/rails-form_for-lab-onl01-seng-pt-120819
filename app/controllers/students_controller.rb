class StudentsController < ApplicationController

    def new
        @student = Student.new
    end

    def show
		@student = find
    end

    def edit
		@student = find
    end

    def create
        @student = Student.new(student_params(:first_name, :last_name))
        @student.save
        redirect_to student_path(@student)
    end

    def update
        @student = find
        @student.update(student_params(:first_name, :last_name))
        redirect_to student_path(@student)

    end

    private

	def student_params(*args)
	    params.require(:student).permit(*args)
    end
    
    def find
        Student.find(params[:id])
    end


end
