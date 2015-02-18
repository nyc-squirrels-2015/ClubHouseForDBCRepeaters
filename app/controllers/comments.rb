get '/comments' do
  @comments = Comment.all
  erb :comments
end

post '/posts/:id/comment/new' do
  new_comment = current_user.comments.create(text: params[:comment], post_id: params[:id])
  redirect "/posts/#{params[:id]}"
end

