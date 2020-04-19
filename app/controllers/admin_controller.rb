class AdminController < ApplicationController
  before_action :can_access?

  def accounts
    @accounts = Account.where(admin: false)
  end

  def can_access?
    @show_sidebar = true

    unless current_account.admin?
      redirect_to root_url, flash: {danger: "You do not have access to view this page"} and return
    end
  end

end
