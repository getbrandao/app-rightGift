module V1
  class SocialKindsController < ApplicationController
    before_action :authenticate_v1_user!
    before_action :set_social_kind, only: [:show]

    #GET /social_kinds
    def index
      @social_kinds = SocialKind.all
      render json: @social_kinds
    end

    #GET /social_kinds/1
    def show
      render json: @social_kind
    end

    private
    def set_social_kind
      @social_kind = SocialKind.find(params[:id])
    end
  end
end
