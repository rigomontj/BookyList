class AddBooksController < ApplicationController
  def scan
    @shelves = current_user.shelves.sort_by{ |s| [s.updated_at, s.name] }  
  end

  def additembyupc 
    #Get form input values to variables 
    @upc = params['upc'].first
    if params['shelfname'].first != ""
        shelfname = params['shelfname'].first
    else
        shelfname = current_user.books.last.shelf.name
    end

    ##################
    #  API REQUESTS  #
    ##################
    
    shelf = Shelf.new(name:shelfname, user_id:current_user.id) 
    
    shelf = Shelf.where(name:shelfname).last unless Shelf.all.where(name:shelfname).to_a.first.nil? 
    
    shelf.save
    

    #GET JSON RESPONSES
        redirect_to add_books_manual_entry_path(shelfname: shelfname)
  end


  def manual_entry
  end

  def manual_add
      
      shelfname = params['shelfname']
      
      shelf = Shelf.where(name:shelfname).last unless Shelf.all.where(name:shelfname).to_a.first.nil? 
      
      @author = params['author']
      @title = params['title']
      @thumbnail = "http://via.placeholder.com/128x194"
      
      book = Book.new(title:@title, author:@author, thumbnail:@thumbnail, shelf_id:shelf.id)
      
      book.save
      redirect_to add_books_scan_path
  end

end
