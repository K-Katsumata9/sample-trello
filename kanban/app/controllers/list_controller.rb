class ListController < ApplicationController
    before_action :set_list, only: [:edit,:update,:destroy]


    def new 
        @list = List.new
    end

    def create
        @user = current_user
        @list = @user.lists.build(list_params)
        if @list.save
            redirect_to :root
        else
            render action: :new
        end
    end

    def edit
        
    end

    def update
        if @list.update(list_params)
            redirect_to :root
        else
            render action: :edit
        end
    end

    def destroy
        @list.destroy
        redirect_to :root
    end

    private

        def list_params
            params.require(:list).permit(:title)
        end

        def set_list
            @list = List.find(params[:id]) 
        end
end
