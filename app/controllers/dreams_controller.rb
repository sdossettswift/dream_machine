class DreamsController < ApplicationController
  def new
    @dream = Dream.new
  end

  def create 
    @dream = Dream.create(dream_params)
    if @dream.save 
      redirect_to root_path, notice: "Dream Added"
    else
      render :new
    end
  end

  def edit
  end
end
