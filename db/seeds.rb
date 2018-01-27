Comment.destroy_all
Post.destroy_all
User.destroy_all

hash_users = 10.times.map do
{
	email: FFaker::Internet.email,
  	name: FFaker::NameRU.name
}
end

users = User.create! hash_users

User.first(5).each { |u| u.update creator: true }
User.first(8).each { |u| u.update moderator: true }

creators = User.where(creator: true)

# Создаем посты
hash_posts = 20.times.map do
  {
    title: FFaker::HipsterIpsum.paragraph,
    body: FFaker::HipsterIpsum.paragraphs,
    user: creators.sample
  }
end
posts = Post.create! hash_posts


hash_comments = 200.times.map do
  commentable = ((rand(2) == 1) ? posts : users).sample
  {
    body: FFaker::HipsterIpsum.paragraphs,
    user: users.sample,
    commentable_id: commentable.id,
    commentable_type: commentable.class.to_s
  }
end
Comment.create! hash_comments