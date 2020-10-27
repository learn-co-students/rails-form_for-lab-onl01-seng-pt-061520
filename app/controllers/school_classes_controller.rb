class SchoolClassesController < ApplicationController
  before_action :find_sc, only: [:show, :edit, :update]

  def index
    @school_classes = SchoolClass.all
  end
  
  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(sc_params)
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def update
    @school_class.update(sc_params)
    redirect_to school_class_path(@school_class)
  end

  private

  def find_sc
    @school_class = SchoolClass.find_by_id(params[:id])
    redirect_to school_classes_path if !@school_class
  end

  def sc_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
