class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    raise
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to list_path(@lists)
  end


  private
  
  def list_params
    params.require(:list).permit(:name)
  end

end
