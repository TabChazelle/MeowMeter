class ReactionsController < ApplicationController
  before_action :set_kitten

  def index
    @reactions = @kitten.reactions
    render json: @reactions
  end

  def create
    @reaction = find_or_initialize_reaction
    if @reaction.increment!(:reaction_count)
      render json: reaction_summary
    else
      render json: { error: @reaction.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def set_kitten
    @kitten = Kitten.find(params[:kitten_id])
  end

  def find_or_initialize_reaction
    @kitten.reactions.find_or_initialize_by(reaction_type: params[:reaction_type])
  end

  def reaction_summary
    total_reactions = @kitten.reactions.sum(:reaction_count)
    individual_reactions = @kitten.reactions.pluck(:reaction_type, :reaction_count).to_h
    { total_reactions: total_reactions, individual_reactions: individual_reactions }
  end
end
