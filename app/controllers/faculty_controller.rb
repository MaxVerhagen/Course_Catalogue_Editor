class FacultyController < ApplicationController
      
    def new
        
    end
    
    def index
        
    end
    
    def login
        
    end
    
    def takecredentials
        faculty = Faculty.find_by username: params[:username]
        if faculty && (faculty.password == params[:password] )
            session[:type] = "Faculty"
            session[:user_id] = faculty.id
            session[:user_name] = faculty.username
            redirect_to faculty_index_path
        else 
           redirect_to faculty_login_path, alert:"Incorrect Username or Password." 
        end
    end
    
    def destroy
        session[:type] = nil
        session[:user_id] = nil
        session[:user_name] = nil
        redirect_to faculty_index_path
    end
end
