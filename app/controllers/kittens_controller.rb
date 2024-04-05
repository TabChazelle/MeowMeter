class KittensController < ApplicationController
  def index
    @kittens = Kitten.limit(10)
  end

  def show
    @kitten = Kitten.find(params[:id])
  end

  def top3
    # your code here...
  end

  def add_reaction
    @kitten = Kitten.find(params[:kitten_id])
    reaction = @kitten.reactions.find_by(reaction_type: params[:type])
    reaction.increment!(:reaction_count)

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to @kitten, notice: 'Reaction added.' }
      format.json { render json: { total_reactions: @kitten.reactions.sum(:reaction_count), reaction_count: reaction.reaction_count }, status: :ok }
    end
  end

  def random_kitten
    @random_kitten = Kitten.offset(rand(Kitten.count)).first
    redirect_to @random_kitten
  end
end
