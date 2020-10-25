class SchoolClassesController < ApplicationController
    def new
        @sclass = SchoolClass.new
    end

     def create
        @sclass = SchoolClass.create(schoolclasses_params)
        redirect_to school_class_path(@sclass)
    end
    
    def show
        @sclass = SchoolClass.find(params[:id])
    end

    def edit
        @sclass = SchoolClass.find(params[:id])
    end

    def update
        @sclass = SchoolClass.find(params[:id])
        @sclass.update(schoolclasses_params)
        redirect_to school_class_path(@sclass)
    end

    private

    def schoolclasses_params
        params.require(:school_class).permit(:title, :room_number)
    end
    
    
end