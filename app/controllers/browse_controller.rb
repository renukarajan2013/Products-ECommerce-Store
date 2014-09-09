class BrowseController < ApplicationController

def browse
  @books	   = Book.all
  
end

end
