class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    list = List.new(list_params)
    list.save
    redirect_to '/top' #パスじゃなくてURLを指定してもイイね
  end

  def index
  end

  def show
  end

  def edit
  end

private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
