class TweetController < ApplicationController

end

 erb :"/users/login"
end

post '/login' do
 user = User.find_by(:username => params["username"])

 if user && user.authenticate(params[:password])
   session[:user_id] = user.id
   redirect to '/tweets'
 else
   flash[:login_error] = "Incorrect login. Please try again."
   redirect to '/login'
 end
end
end
