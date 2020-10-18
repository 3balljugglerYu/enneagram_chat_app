class EnneagramTypesController < ApplicationController
  def index
    @enneagram_type = EnneagramType.new
  end

  def new
    @enneagram_type = EnneagramType.new
  end

  def create
    # binding.pry
    @enneagram_type = EnneagramType.new(enneagram_type_params)
    if @enneagram_type.valid?
      @enneagram_type.save
      redirect_to root_path
    else
      render :new
      # redirect_to enneagram_types_path
    end
  end

  def show
    @enneagram_type = EnneagramType.find(params[:id])
  end

  

  private

  def enneagram_type_params
    # params.require(:enneagram_type).permit(:type_result_id, :perfectionist_sum, :giver_sum, :achiever_sum, :individualist_sum, :investigator_sum, :skeptic_sum, :enthusiast_sum, :challenger_sum, :peacemaker_sum)
    params.require(:enneagram_type).permit(:type_result_id, :perfectionist_sum, :giver_sum, :achiever_sum, :individualist_sum, :investigator_sum, :skeptic_sum, :enthusiast_sum, :challenger_sum, :peacemaker_sum).merge(user_id: current_user.id)
    # params.require(:enneagram_type).permit(:type_result_id)
  end

  def user_params
    params.require(:user).permit(:enneagram_type_id)
  end

end