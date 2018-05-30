class MyBooksController < ApplicationController
  def index
    @shelves = current_user.shelves.order( 'created_at DESC' )
  end
end
