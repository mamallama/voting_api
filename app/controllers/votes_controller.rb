class VotesController < ApplicationController
  def index
    results = Vote.group(:candidate_id).count
    render json: results
    # respond_to do |format|
    #   format.html
    #   format.json {render json: Voter.all.to_json}
      # render json: Voter.all.to_json
    # end
  end

  def create
    vote = Vote.new
    vote.candidate_id = params[:candidate_id]
    vote.voter_id = params[:voter_id]

    if vote.save
      render json: vote
    else
      render json: vote.errors
    end
  end

  def destroy
    voter = Vote.find_by(access_token: params[:access_token])
    voter.vote.destroy
    render json: "Sunk the battleship."
  end
end
