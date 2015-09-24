class VotersController < ApplicationController

  def index
    # respond_to do |format|
    #   format.html
    #   format.json {render json: Voter.all.to_json}
    # end
    render json: Voter.all.to_json
  end

  def create
    v = Voter.new(name: params[:name], party: params[:party])
    if v.save
      render json: v.to_json
    else
      render json: v.errors
    end
  end

  def show
    voter = Voter.find(params[:id])
    if voter.access_token == params[:access_token]
      render json: voter
    else
      render json: "NOPE."
    end
  end

  def update
    voter = Voter.find(params[:id])
    voter.name = params[:name] if params[:name]
    voter.party = params[:party] if params[:party]
    if voter.save
      if voter.access_token == params[:access_token]
        render json: voter
    else
      render json: "NOPE."
    end
  end

  def destroy
    Voter.find(params[:id]).json
    render json: "You deleted that!"
  end
end
