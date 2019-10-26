class AdminController < ApplicationController
  def index
  end
  
  def adminlist
    @adminlist = Admin.all.each
  end
  
  def create
  end
  
  def new
  end
  
  def erase
  end
  
  def delete
    @admin = Admin.find_by username: params[:testusername]
    @admin.destroy
    redirect_to admin_login_path
  end
  
  def a_create
    if (params[:newusername] == nil) || (params[:newusername] == nil)
      redirect_to admin_create_path
    else
      @admin = Admin.create(:username => params[:newusername], :password => params[:newpassword], :usertype => 'Admin')
      @admin.save
      session[:type] = "Admin"
      session[:user_id] = @admin.id
      session[:user_name] = @admin.username
  
      redirect_to admin_index_path
    end
  end
  def login
        
  end
    
  def takecredentials
    @admin = Admin.find_by username: params[:username]
    if @admin && (@admin.password == params[:password] )
        session[:type] = "Admin"
        session[:user_id] = @admin.id
        session[:user_name] = @admin.username
        redirect_to admin_index_path
    else 
         redirect_to admin_login_path, alert:"" 
    end
  end
  
  def destroy
      session[:type] = nil
      session[:user_id] = nil
      session[:user_name] = nil
      redirect_to admin_login_path
  end
end
