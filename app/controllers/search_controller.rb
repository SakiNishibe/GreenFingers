class SearchController < ApplicationController

  before_action :authenticate_user!

  def search
    if params[:search][:word] == ''
      redirect_to root_path
    end

    @split_words = params[:search][:word].split(/[[:blank:]]+/).select(&:present?)
    @negative_words, @positive_words =
      @split_words.partition {|split_word| split_word.start_with?('-')}

    @user = current_user
  	@new_user = User.new
  	@blog = Blog.new
  	@topic = Topic.new
    @model = params[:search][:model]
    @datas = datas_none(@model)

    @positive_words.each do |word|
      @datas_all = search_for(@model, word)
      @datas = search_for(@model, word).page(params[:page])
    end

    @negative_words.each do |word|
      if @model == 'user'
        @datas.where("name NOT LIKE ?", "%#{word.delete_prefix('-')}%")
      elsif @model == 'blog'
        @datas.where("title || body NOT LIKE ?", "%#{word.delete_prefix('-')}%")
      else @model == 'topic'
        @datas.where("title NOT LIKE ?", "%#{word.delete_prefix('-')}%")
      end
    end
  end

  private
  def datas_none(model)
    if model == 'user'
      @datas = User
    elsif model == 'blog'
      @datas = Blog
    else model == 'topic'
      @datas = Topic
    end
  end

  def search_for(model, word)
  	if model == 'user'
  	  @datas = @datas.where("name LIKE ?", "%#{word}%")
  	elsif model == 'blog'
  	  @datas = @datas.where("title || body LIKE ?", "%#{word}%")
  	else model == 'topic'
  	  @datas = @datas.where("title LIKE ?", "%#{word}%")
    end
  end
end
