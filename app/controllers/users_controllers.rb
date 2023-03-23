require 'bcrypt'

class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      render json: { id: user.id, username: user.username, image_url: user.image_url, bio: user.bio }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def login
    user = User.find_by(username: params[:username])
    if user && BCrypt::Password.new(user.password_digest) == params[:password]
      session[:user_id] = user.id
      render json: { id: user.id, username: user.username, image_url: user.image_url, bio: user.bio }
    else
      render json: { error: 'Invalid username or password' }, status: :unauthorized
    end
  end

  def me
    if current_user
      render json: { id: current_user.id, username: current_user.username, image_url: current_user.image_url, bio: current_user.bio }
    else
      render json: { error: 'You must be logged in to access this resource' }, status: :unauthorized
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :image_url, :bio)
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
end


# require 'bcrypt'

# class UsersController < ApplicationController
#     def create
#       user = User.new(user_params)
#       if user.valid?
#         user.password = bcrypt_password(user.password)
#         user.save
#         session[:user_id] = user.id
#         render json: { id: user.id, username: user.username, image_url: user.image_url, bio: user.bio }, status: :created
#       else
#         render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
#       end
#     end
  
#     private
  
#     def user_params
#       params.require(:user).permit(:username, :password, :image_url, :bio)
#     end
  
#     def bcrypt_password(password)
#       bcrypt = BCrypt::Password.create(password)
#       bcrypt.to_s
#     end
#   end
  