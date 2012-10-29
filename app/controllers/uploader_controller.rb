class UploaderController < ApplicationController
  def upload
  end

  def receive
    uploaded_io = params[:data]
    uploader = DataUploader.new

    uploader.store!(uploaded_io)

    flash[:notice] = "#{uploader.size} bytes empfangen!"

    redirect_to :controller => :uploader, :action => :upload

  end
end
