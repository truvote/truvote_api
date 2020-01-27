module Api
  module V1
    class BillsController < ApplicationController
      before_action :set_bill, only: [:show, :edit, :update, :destroy]
      # before_action :assert_is_representative, only: [:edit, :update, :new, :destroy]
    
      # GET /bills
      # GET /bills.json
      def index
        render json: Bill.all
      end
    
      # GET /bills/1
      # GET /bills/1.json
      def show
        render json: @bill
      end
    
      # GET /bills/new
      def new
        @bill = Bill.new
      end
    
      # POST /bills
      # POST /bills.json
      def create
        @bill = Bill.new(bill_params)
        
        if @bill.save
          render json: { bill: @bill }, status: :ok
        else
          render json: { errors: @bill.errors, status: 501 }
        end
      end
    
      # PATCH/PUT /bills/1
      # PATCH/PUT /bills/1.json
      def update
        binding.pry
        if @bill.update(bill_params)
          render json: { bill: @bill }, status: :ok
        else
          render json: { errors: @bill.errors, status: 501 }
        end
      end
    
      # DELETE /bills/1
      # DELETE /bills/1.json
      def destroy
        if @bill.destroy
          render status: 200
        else
          render json: { errors: @bill.errors }, status: 501
        end
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_bill
          @bill = Bill.find(params[:id])
        end
    
        # Never trust parameters from the scary internet, only allow the white list through.
        def bill_params
          params.require(:bill).permit(:body, :title, :history, :email, :voting_date, :status, :website)
        end
    end    
  end
end
