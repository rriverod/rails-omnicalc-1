Rails.application.routes.draw do
  
get("/square/new", {:controller=>"calc", :action=>"square_new"})
get("/square/results", {:controller=>"calc", :action=>"square_results"})


end
