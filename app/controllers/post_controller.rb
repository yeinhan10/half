class PostController < ApplicationController
  
  #글 리스트
  def index
    @all_interriors = Interrior.all
  end
  
  #글을 클릭하면 사진과 함께 보임
  def show
    @interrior = Interrior.find(params[:id])
  end
  
  #글을 쓰는 곳
  def write
  end
  
  def create
    interrior= Interrior.new
    interrior.title = params[:title]
    interrior.content = params[:content] 
    
    uploader = InstagramUploader.new
    uploader.store!(params[:file])
    interrior.instagram = uploader.url
    
    interrior.save
    
    redirect_to '/post/index'
  end
  
  
end
