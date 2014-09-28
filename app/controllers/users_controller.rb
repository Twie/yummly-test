class UsersController < ApplicationController
  def index
    @search = params[:search]
    unless @search.blank?
      temp = Yummly.search(params[:search])
      @result = temp.to_a[0..2].collect { |recipe| Yummly.find(recipe.id) }
      @list = @result.collect {|x| x.id}
      a = @list[0]
      @recipe = Yummly.find(a)
    else
      @result = []
      @list = []
      @recipe = nil
    end
  end

end
