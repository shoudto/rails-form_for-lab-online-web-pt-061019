class StudentsController < ApplicationController 
    def index
        @students = Student.all # show all students 
    end 

    def new 
        @student = Student.new # creating a new student 
    end 

    def create 
        @student = Student.new(student_params(:first_name, :last_name)) # creating a student with attributes 
        @student.save                                                   # Saving the student 
        redirect_to  student_path(@student)                             # direct to that student
    end 

    def edit 
        @student = Student.find(params[:id]) # finding the student 
    end 

    def show
        @student = Student.find(params[:id]) # finding the student 
    end 

    def update
        @student = Student.find(params[:id]) # finding the student 
        @student.update(student_params(:first_name, :last_name)) # updating the student params or attributes
        redirect_to student_path(@student)  # direct to student
    end 

    private 

    def student_params(*args)
        params.require(:student).permit(*args) # private method creating a require params for attributes
    end 
end 