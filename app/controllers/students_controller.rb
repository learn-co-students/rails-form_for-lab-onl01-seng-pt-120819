class StudentsController < ApplicationController
    def show
        @student = Student.find_by_id(params[:id])
    end
    
    def new
        @student = Student.new 
    end

    def edit
        @student = Student.find_by_id(params[:id])
    end

    def create
        @student = Student.create(params.require(:student).permit(:first_name, :last_name))
        redirect_to @student 
    end

    def update
        @student = Student.find_by_id(params[:id])
        @student.update(params.require(:student).permit(:first_name, :last_name))
        redirect_to @student 
    end

end