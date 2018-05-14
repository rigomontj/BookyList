class AddBooksController < ApplicationController
  def scan
  end

  def addisbn 
    @isbn = params['isbn'].first
    
    
    
    redirect_to add_books_scan_path
  end
end
