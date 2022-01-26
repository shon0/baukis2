class Admin::Base < ApplicationController
  before_action :authorize
  before_action :check_account

  private def current_administrator
    if session[:administrator_id]
      @current_administorator ||=
        Administrator.find_by(id: session[:administrator_id])
    end
  end

  helper_method :current_administrator

  private def authorize
    unless current_administrator
      flash.alert = "管理者としてログインしてください。"
      redirect_to :admin_login
    end
  end

  private def check_account
    if current_administrator && !current_administrator.active?
      session.delete(:administrator_id)
      flash.alert = "アカウントが無効になりました。"
      redirect_to :admin_root
    end
  end
end
