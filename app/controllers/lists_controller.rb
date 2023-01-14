class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
    # redirect_to '/top' #パスじゃなくてURLを指定してもイイね
      flash[:notice] = "投稿が成功しました"
      redirect_to list_path(@list.id) #ルーティング変更後
    else
      # @lists = List.all #indexで使っているインスタンス変数を用意する
      # render :index
      render :new
    end

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

  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)
  end

  def destroy
    list = List.find(params[:id])
    list.destroy
    redirect_to '/lists'
  end

private
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end
end
