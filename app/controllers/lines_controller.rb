class LinesController < ApplicationController
  def index
    @lines = Line.all
  end

  def new
    @line = Line.new
  end

  def show
    @line = Line.find(params[:id])
    @stops = Stop.where(line_id: @line.id)
  end

  def create
    @line = Line.new(line_params)
    if @line.save
      flash[:notice] = "Bus Line created"
      redirect_to new_stop_path
    else
      render 'new'
    end
  end

  def edit
    @line = Line.find(params[:id])
  end

  def update
    @line = Line.find(params[:id])
    if @line.update(line_params)
      flash[:notice] = "Line updated"
      redirect_to line_path(@line)
    else
      render 'edit'
    end
  end

  def destroy
    @line = Line.find(params[:id])
    @line.destroy
    flash[:notice] = "Line deleted"
    redirect_to lines_path
  end

  private

  def line_params
    params.require(:line).permit(:color)
  end
end
