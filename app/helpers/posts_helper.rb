module PostsHelper
  def project_user_name
    current_user.user_name
  end

  def project_email
    current_user.email
  end

  def project_office
    if current_user.user_office == 1
      "International"
    elsif current_user.user_office == 2
      "United Kingdom"
    elsif current_user.user_office == 3
      "Netherlands"
    elsif current_user.user_office == 4
      "New Zealand"
    end
  end

  def manage_projects
    if @post.idea_name == current_user.user_name
      true
    elsif current_user.user_office == 5
      true
    else
      false
    end
  end
end
