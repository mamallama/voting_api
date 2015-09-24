class CandidatesController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json {render json: Candidate.all.to_json}
    end
  end

  def show
    render json: Candidate.find(params[:id]).to_json
  end

  def destroy
    Candidate.find(params[:id]).json
    render json: "You deleted that"
  end
end
