class ReactionsController < ApplicationController
  def create
    @kitten = Kitten.find(params[:kitten_id])
    @kitten.reactions.create(reaction_type: params[:reaction_type])
    redirect_to @kitten
  end
end
