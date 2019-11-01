class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:user_email])

    # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
    if user && user.authenticate(params[:user_password])
      session[:user_id] = user.id
      # redirige où tu veux, avec un flash ou pas
      redirect_to '/'
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to '/'
  end

end
