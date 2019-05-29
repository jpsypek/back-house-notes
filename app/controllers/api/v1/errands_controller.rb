module Api
  module V1
    class ErrandsController < ApplicationController
      before_action :find_errand, only: [:update, :destroy]

      def index
        render json: Errand.all
      end

      def create
        @errand = Errand.create(errand_params)
      end

      def update
        @errand.update(errand_params)
      end

      def destroy
        @errand.destroy
      end

      private

      def find_errand
        @errand = Errand.find(params[:id])
      end

      def errand_params
        params.require(:errand).permit(:house_id, :name, :description)
      end
    end
  end
end
