# Defining the starting point for my ApplicationController.
# This used to be app.rb. However, app.rb became too cluttered with stuff.
# Now, we are going to give controllers a chance to organize our code.

class ApplicationController < Sinatra::Base

  require 'bundler'
  Bundler.require()

  ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'chicago_recs'
  )

# I need to specify my views folder because I am no longer using just app.rb.
set :views, File.expand_path('../../views', __FILE__)
# There is a double .. because you first have to jump off the file. So the first .. goes just to the controllers folder. The next .. will go to the root folder. This would not be the same in terminal, obviously.


#The same, so it can reach the CSS
set :public, File.expand_path('../../public', __FILE__)




not_found do
  erb :error
end


end
