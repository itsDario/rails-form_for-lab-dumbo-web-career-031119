class SchoolClassesController < ApplicationController
  def create
    @class = SchoolClass.create(class_params)
    redirect_to @class
  end

  def index; end

  def new
    @class = SchoolClass.new
end

  def show
    @class = SchoolClass.find(params[:id])
  end

  def update
    @class = SchoolClass.find(params[:id])
    @class.update(class_params)
    redirect_to @class
  end

  def edit
    @class = SchoolClass.find(params[:id])
  end

  private

  def class_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
