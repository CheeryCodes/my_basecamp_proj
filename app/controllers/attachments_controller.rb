class AttachmentsController < ApplicationController
    before_action :set_project
  
    def create
      @attachment = @project.attachments.build(attachment_params)
      if @attachment.save
        redirect_to @project, notice: 'Attachment was successfully added.'
      else
        render 'projects/show'
      end
    end

    
    def destroy
        @attachment = @project.attachments.find(params[:id])
        @attachment.destroy
        redirect_to @project, notice: 'Attachment was successfully deleted.'
      end
    
  
    private
  
    def set_project
      @project = Project.find(params[:project_id])
    end
  
    def attachment_params
      params.require(:attachment).permit(:attachment_file)
    end
  end
  def attachment_params
  params.require(:attachment).permit(:attachment_file)
end


