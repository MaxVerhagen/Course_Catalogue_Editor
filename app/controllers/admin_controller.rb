class AdminController < ApplicationController
    
    def new
        
    end
    
    def index
        
    end
    
    def login
        
    end
    
    def takecredentials
        admin = Admin.find_by username: params[:username]
        if admin && (admin.password == params[:password] )
            session[:type] = "Admin"
            session[:user_id] = admin.id
            session[:user_name] = admin.username
            redirect_to admin_index_path
        else 
           redirect_to admin_login_path, alert:"Incorrect Username or Password." 
        end
    end
    
    def destroy
        session[:type] = nil
        session[:user_id] = nil
        session[:user_name] = nil
        redirect_to admin_index_path
    end
end
