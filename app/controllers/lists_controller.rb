class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    list = List.new(list_params)
    list.save
    # redirect_to '/top' #パスじゃなくてURLを指定してもイイね
    redirect_to list_path(list.id) #ルーティング変更後

  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end

private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
