class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list), notice: 'List created.'
    else
      render :new, status: :unprocessable_entity
    end
    def destroy
      @list = List.find(params[:id])
      @list.destroy
      redirect_to lists_path, notice: "List was successfully deleted."
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
