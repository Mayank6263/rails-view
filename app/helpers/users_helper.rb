module UsersHelper
  def listinguser(users)
    @users.order(username: :desc)
  end
end
