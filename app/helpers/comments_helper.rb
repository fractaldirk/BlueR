module CommentsHelper
  def commenter
    current_user.user_name
  end
end
