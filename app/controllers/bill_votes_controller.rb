class BillVotesController < ApplicationController
  before_action :set_bill_vote, only: [:show, :edit, :update, :destroy]

  # GET /bill_votes
  # GET /bill_votes.json
  def index
    @bill_votes = BillVote.all
  end

  # GET /bill_votes/1
  # GET /bill_votes/1.json
  def show
  end

  # GET /bill_votes/new
  def new
    @bill_vote = BillVote.new
  end

  # GET /bill_votes/1/edit
  def edit
  end

  # POST /bill_votes
  # POST /bill_votes.json
  def create
    @bill_vote = BillVote.new(bill_vote_params)

    respond_to do |format|
      if @bill_vote.save
        format.html { redirect_to @bill_vote, notice: 'Bill vote was successfully created.' }
        format.json { render :show, status: :created, location: @bill_vote }
      else
        format.html { render :new }
        format.json { render json: @bill_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bill_votes/1
  # PATCH/PUT /bill_votes/1.json
  def update
    respond_to do |format|
      if @bill_vote.update(bill_vote_params)
        format.html { redirect_to @bill_vote, notice: 'Bill vote was successfully updated.' }
        format.json { render :show, status: :ok, location: @bill_vote }
      else
        format.html { render :edit }
        format.json { render json: @bill_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_votes/1
  # DELETE /bill_votes/1.json
  def destroy
    @bill_vote.destroy
    respond_to do |format|
      format.html { redirect_to bill_votes_url, notice: 'Bill vote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill_vote
      @bill_vote = BillVote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bill_vote_params
      params.require(:bill_vote).permit(:bill_id, :user_id, :amount)
    end
end
