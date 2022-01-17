class Admin::SessionsController < Admin::Base
  def new
    if current_administrator
      redirect_to :staff_root
    else
      @form = Admin::LoginForm.new
      render action: "new"
    end
  end
end
