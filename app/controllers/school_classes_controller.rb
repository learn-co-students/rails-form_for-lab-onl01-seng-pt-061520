class SchoolClassesController < ApplicationController

    def show
        @class = current_class
    end

    def new
        @class = SchoolClass.new
    end

    def create
        @class = SchoolClass.new(class_params(:title, :room_number))
        @class.save
        redirect_to school_class_path(@class)
    end

    def update
        @class = current_class
		@class.update(class_params(:title))
		redirect_to school_class_path(@class)
    end

    def edit
        @class = current_class
    end

    private

    def current_class
        SchoolClass.find(params[:id])
    end

    def class_params(*args)
        params.require(:school_class).permit(*args)
    end

end