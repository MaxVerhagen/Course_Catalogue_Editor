class AdminController < ApplicationController
  skip_before_action :verify_authenticity_token
	
  def index
	puts "Type #{session[:type]}"
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
	@admin = Admin.find_by username: params[:admin][:username]

    if @admin && (@admin.password == params[:admin][:password] )
        session[:type] = "Admin"
        session[:user_id] = @admin.id
		session[:user_name] = @admin.username
		
		puts "Type #{session[:type]}"

        redirect_to protocol: 'https://', action: 'index'
    else 
        redirect_to protocol: 'https://', action: 'login'
    end
  end
  
  def destroy
      session[:type] = nil
      session[:user_id] = nil
      session[:user_name] = nil
      redirect_to protocol: 'https://', action: 'login'
  end
end
