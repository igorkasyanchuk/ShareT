class Admin::AdminController < InheritedResources::Base
  respond_to :html, :xml, :json
  USER, PASSWORD = "igor", "igor11"
  before_filter :authenticate
  layout 'admin'
  
  def index
  end
  
  private
    
    def authenticate
      authenticate_or_request_with_http_basic do |id, password| 
        id == USER && password == PASSWORD
      end
    end
    
end