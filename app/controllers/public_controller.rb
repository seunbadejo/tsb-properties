class PublicController < ApplicationController
  def main
    if account_signed_in?
      path = current_account.admin? ? accounts_path : dashboard_path
      redirect_to path, flash: { success: "Successfully Signed In. Welcome To TSB Properties"} and return
    end
    @properties = Property.latest_properties
    @posts = Post.latest
  end
end
