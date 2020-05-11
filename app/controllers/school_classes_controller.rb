class SchoolClassesController < ApplicationController


    def new
        @school_class = SchoolClass.new
    end
    

    def create
        @school_class = SchoolClass.new(class_params(:title, :room_number))
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def show
        @school_class = find
    end

    def edit
        @school_class = find
    end

    def update
        @school_class = find
         @school_class.update(class_params(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end

    private

    def find
        SchoolClass.find(params[:id])
    end

    def class_params(*args)
        params.require(:school_class).permit(*args)
    end

end