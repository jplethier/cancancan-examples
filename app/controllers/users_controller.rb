class UsersController < ApplicationController

  def index; end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to users_path, notice: "Usuário atualizado com sucesso"
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end
