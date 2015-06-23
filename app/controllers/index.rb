get '/' do
  @output = Category.print
  erb :categories
end

get '/post/show/:id/' do
  @cat_name = Category.where(id: params[:id].to_i)
  @post_output = Category.find_by(id: params[:id].to_i).posts
  erb :posts
end

get '/post/new' do
  erb :new_post
end

post '/post/new_post' do
 @b = Post.create_new(params)
  erb :post_success
end

get '/post/:id/edit' do
  @key = params[:key]
  @id = params[:id]
  @b = Post.display_info(@id)
  erb :update_post
end

get '/post/edit' do
  @key = params[:key]
  @id = @key.slice!(10..-1)
  @b = Post.display_info(@id)
  erb :update_post
end

post '/post/update_post' do
  Post.update_post(params)
  redirect to '/'
end