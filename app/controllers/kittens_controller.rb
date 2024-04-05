class KittensController < ApplicationController
  def index
    @kittens = Kitten.limit(12)
  end

  def show
    @kitten = Kitten.find(params[:id])
  end

  def top3
    @top_kittens = Kitten.left_joins(:reactions).group(:id).order('SUM(reactions.reaction_count) DESC').limit(3)
  end

  def add_reaction
    @kitten = Kitten.find(params[:id])
    @kitten.reactions.create(reaction_count: 1)
    render json: { total_reactions: @kitten.reactions.sum(:reaction_count) }
  end

  def random_kitten
    @random_kitten = Kitten.offset(rand(Kitten.count)).first
    redirect_to @random_kitten
  end
end
