class SessionsController < ApplicationController
  
  def destroy
     session[:login_id] = nil
     flash[:notice] = "GoodBye amigo!"
     redirect_to root_url
   
   end
  
  
  def new
  end

  def create
    user = User.find_by_login(params[:login])
    
    if user
      if user.authenticate(params[:password])
          sessions[:login_id] = user.id
          redirect_to root_url, notice: "Hola, #{user.login}"
      else
          redirect_to root_url, notice: "wrong password man!"
      end
    else
        redirect_to root_url, notice: "wrong login ID Hermano!"
    end
  end  
end

 

