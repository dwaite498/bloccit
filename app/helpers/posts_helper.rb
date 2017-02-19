module PostsHelper
  def user_is_authorized_for_posts?
    current_user && (current_user == post.user || current_user.admin? || current_user.moderator?)
  end
  def user_is_mod?
    current_user.moderator?
  end
end
