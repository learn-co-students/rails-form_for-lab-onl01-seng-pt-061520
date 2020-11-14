class SchoolClassesController < ApplicationController
    before_action :find_class, only: [:show, :edit]

    def index 
        @school_class = SchoolClass.all
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.create(school_params)
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    # def show
    # end

    # def edit
    # end

    def update 
        @school_class = SchoolClass.find(find_class)
        @school_class.update(school_params)
    
        redirect_to school_class_path(@school_class)
    end
    
    private

    def find_class
        @school_class = SchoolClass.find_by(params[:id])
        # redirect_to students_path if !@student
    end

    def school_params
        params.require(:school_class).permit!
    end
end
