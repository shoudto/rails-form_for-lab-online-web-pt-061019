class SchoolClassesController < ApplicationController
    def index
        @school_classes = SchoolClass.all # show all the school classes
    end 

    def new 
        @school_class = SchoolClass.new # creating a new school class
    end 

    def create
        @school_class = SchoolClass.new(school_class_params(:title, :room_number)) # creating school class with attributes
        @school_class.save # saving the school class 
        redirect_to school_class_path(@school_class) # redirect to school class
    end 

    def edit 
        @school_class = SchoolClass.find(params[:id]) # finding a school class
    end 

    def show
        @school_class = SchoolClass.find(params[:id]) # finding a school class
    end

    def update
        byebug
        @school_class = SchoolClass.find(params[:id]) # finding the school class
        @school_class.update(school_class_params(:title, :room_number)) # updating the school class attributes 
        redirect_to school_class_path(@school_class) # redirect to the school class
    end 

    private 

    def school_class_params(*args)
        params.require(:school_class).permit(*args) # private method for using certain params
    end 
end 