module Api
  module V1
    class GroceriesController < ApplicationController
      before_action :find_grocery, only: [:update, :destroy]

      def index
        render json: Grocery.all
      end

      def create
        @grocery = Grocery.create(grocery_params)
      end

      def update
        @grocery.update(grocery_params)
      end

      def destroy
        @grocery.destroy
      end

      private

      def find_grocery
        @grocery = Grocery.find(params[:id])
      end

      def grocery_params
        params.require(:grocery).permit(:house_id, :name)
      end

    end
  end
end
