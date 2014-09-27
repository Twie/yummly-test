class UsersController < ApplicationController

	def index

		temp = Yummly.search(params[:search])
		@result = temp.
		collect { |recipe| Yummly.find(recipe.id) }.take(3)

		@list = @result.collect {|x| x.id}
		# @list[0]
		#a = params[:id]
		a = @list[0]
		@recipe = Yummly.find(a)

		
		
	end

end
