class ItemsController < ApplicationController

  def index
    @items = Item.sort_by_votes
  end

  def new
     @item = Item.new
  end

  def create
    @item = Item.new(find_params)
    @item.votes = 1
    if @item.save
      redirect_to items_path(@item)
    else
      render 'new'
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(find_params)
      redirect_to items_show_path(@item)
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  def upvote
    @item = Item.find(params[:id])
    @item.votes += 1
    if @item.save
      redirect_to items_path(@item)
    else
      render 'show'
    end
  end

  def downvote
    @item = Item.find(params[:id])
    @item.votes -= 1
    if @item.save
      redirect_to items_path(@item)
    else
      render 'show'
    end
  end

  private

  def find_params
    params.require(:item).permit(:title, :author, :link, :description)
  end

end
