class TopController < ApplicationController

    def index
        @lists = List.where(user_id: current_user.id).order(created_at: :asc)
    end

    
    private

        def list_params
            params.require(:list).permit(:title)
        end

end