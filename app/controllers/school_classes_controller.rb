class SchoolClassesController < ApplicationController

    def new
        @class = SchoolClass.new
    end

    def edit
        @class = find
    end

    def create
        @class = SchoolClass.new(school_class_params(:title, :room_number))
        @class.save
        redirect_to school_class_path(@class)
    end

    def show
        @class = find
    end


    def update
        @class = find
        @class.update(school_class_params(:title, :room_number))
        redirect_to school_class_path(@class)
    end

    private

	def school_class_params(*args)
	    params.require(:school_class).permit(*args)
    end
    
    def find
        SchoolClass.find(params[:id])
    end

end

