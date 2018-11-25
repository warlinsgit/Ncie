module PostsHelper

	def post_author(post)
		user_signed_in? && current_user.id == post.user_id
	end
end
