class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def create
    @message = Message.create(:author => params[:author], :message => params[:message])
    respond_to do |format|
      format.html {redirect_to messages_path }
      format.js { render :layout => false}
    end
  end
end

