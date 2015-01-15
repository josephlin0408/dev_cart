class Admin::BaseController < ApplicationController
  before_action :authenticate_user!, :required_admin!


  protected
  
  #判斷如果身分是否為管理者，如果不是就倒回前台首頁。
  def required_admin!
    redirect_to posts_path, notice: '你沒有 admin 權限' unless current_user && current_user.admin?
  end
end