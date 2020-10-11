class EnneagramTypesController < ApplicationController
  def index
  end

  def new
    @enneagram_type = EnneagramType.new
  end

  def show
  end

  def create
    @enneagram_type = EnneagramType.new(enneagram_type_params)
    if @enneagram_type.valid?
      @enneagram_type.save
      redirect_to root_path
    else
      render :index
    end
  end

  

  private

  def enneagram_type_params
    params.permit(:type_result_id, :perfectionist_sum, :giver_sum, :achiever_sum, :individualist_sum, :investigator_sum, :skeptic_sum, :enthusiast_sum, :challenger_sum, :peacemaker_sum)
  end

end