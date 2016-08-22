class DreamsController < ApplicationController
  def new
    @dream = Dream.new
  end

  def create
    @dream = Dream.new(dream_params)
    if @dream.save
      redirect_to root_path, notice: "Dream Added"
    else
      render :new
    end
  end

  def index
    @dreams = Dream.all
  end

  def edit
    @dream = Dream.find_by id:  params[:id]
  end

  def show
    @dream = Dream.find_by id:  params[:id]
  end

  def update
    @dream = Dream.find_by id:  params[:id]
    if @dream.update(dream_params)
      redirect_to root_path, notice: "Dream Updated"
    else
      render :edit
    end
  end


  def dream_params
    params.require(:dream).permit(:title, :body, :dreamer_id, :dreamer)
  end

end
