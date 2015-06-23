class Post < ActiveRecord::Base

  belongs_to :category

  def self.category_all(category_id)
    a = Post.where(category_id: category_id)
    a
  end

  def self.display_info(id)
    a = Post.where(id: id)
    a
  end

  def self.create_new(params)
     @a= Post.create(title: params[:title], description: params[:description], price: params[:price].to_f, email: params[:email], category_id: params[:category_id].to_i)
    @key= @a.created_at.to_i.to_s + @a.id.to_s
    @b = Post.update(@a.id, :key => @key)
  end

  def self.update_post(params)
    Post.update(params[:post_id].to_i, :title => params[:title], :description => params[:description], :price => params[:price], :email => params[:email], :category_id => params[:category_id] )
  end

end
