Rails.application.routes.draw do

get("/", {:controller => "calc", :action =>"home"})
get("/square/new", {:controller=>"calc", :action=>"square_new"})
get("/square/results", {:controller=>"calc", :action=>"square_results"})


get("/square_root/new", {:controller=>"calc", :action=>"square_root_new"})
get("/square_root/results", {:controller=>"calc", :action=>"square_root_results"})



end
