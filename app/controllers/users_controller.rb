class UsersController < ApplicationController
  def index
  end

  def create
    if params[:new_password] == params[:new_password_confirmation]
      u = User.new
      u.id = User.all.length + 1
      u.email = params[:new_email]
      u.password = params[:new_password]
      u.first_name = params[:new_first_name]
      u.last_name = params[:new_last_name]
      u.age = params[:new_age]
      u.description = params[:new_description]
      if City.all.find_by(name: params[:new_city])
        u.city = City.all.find_by(name: params[:new_city])
      else
        c = City.new
        c.name = params[:new_city]
        c.zip_code = "#{rand(0..9)}#{rand(1..5)}#{Faker::Number.unique.between(from: 10, to: 88)}0"
        c.id = City.all.length + 1
        c.save
        u.city_id = c.id
      end
      if u.save
        puts "$" * 100
        puts "UTILISATEUR AJOUTÉ"
        redirect_to '/'
      else
        puts "$" * 100
        puts "ÇA MARCHE PAS"
        render 'new'
      end
    else
      puts "VEUILLEZ SAISIR LE MÊME MOT DE PASSE LORS DE LA CONFIRMATION"
      render 'new'
    end
  end

  def new
  end

  def edit
  end

  def show
    @my_user = User.all.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
