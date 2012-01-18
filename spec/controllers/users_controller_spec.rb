

require 'spec_helper'

describe UsersController do
 render_views
 describe "GET 'new'" do
   it "returns http success" do
     get 'new'
     response.should be_success
   end

     it "should recognize a specific users#edit route" do
   assert_routing("/users/1/edit", {:controller => "users", :id => "1", :action => "edit"})
 end

 end

end
