# frozen_string_literal: true

class Public::SessionsController < Devise::SessionsController
  before_action :custamer_state, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # # DELETE /resource/sign_out
  # # def destroy
  # #   super
  # # end

  protected

  def custamer_state
    ## 【処理内容1】 入力されたemailからアカウントを1件取得
    @custamer = Custamer.find_by(email: params[:custamer][:email])
    ## アカウントを取得できなかった場合、このメソッドを終了する
    return if !@custamer
    ## 【処理内容2】 取得したアカウントのパスワードと入力されたパスワードが一致してるかを判別
    if @custamer.valid_password?(params[:custamer][:password]) && @custamer.is_deleted == true
      ## 【処理内容3】
      flash[:alert] = "退会済みです"
      redirect_to new_custamer_registration_path
    end
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
