class MessagesController < ApplicationController
    before_action :authenticate_user!
  
    def index
      @hero = Hero.find(params[:hero_id])
      @messages = Message.where(hero: @hero)
      @message = Message.new
    end
  
    def create
      @hero = Hero.find(params[:hero_id])
      @message = Message.new(message_params)
      @message.hero = @hero
      @message.user = current_user
  
      if @message.save
        redirect_to hero_messages_path(@hero), notice: 'Message sent successfully.'
      else
        flash.now[:alert] = 'Error sending message.'
        render :index
      end
    end
  
    private
    
    def set_hero
        @hero = Hero.includes(:user).find(params[:hero_id])
    end
      
    def message_params
      params.require(:message).permit(:content)
    end
  end
  