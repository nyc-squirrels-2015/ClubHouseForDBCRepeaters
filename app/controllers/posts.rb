get '/index' do
  @posts = Post.all
  erb :posts
end

