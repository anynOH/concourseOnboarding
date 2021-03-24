require '../app/app.rb'
require 'rack/test'
require 'rspec'

RSpec.describe 'Sinatra App' do
  include Rack::Test::Methods

  def app
    Application.new
  end

it "displays home page" do 
    get '/'

    expect(last_response.body).to include("This is the root-page")
  end
  
  it "displays about page" do 
    get '/about'

    expect(last_response.body).to include("What is this about?")
  end
  
  it "displays welcome page if a user exists" do 
    get '/welcome', :user => "Ole"

    expect(last_response.body).to include("Welcome Ole!")
  end
  
  it "displays home page if there is no user" do 
    get '/welcome'

    expect(last_response.redirect?).to be true
    follow_redirect!
    expect(last_request.path).to eq('/')
  end
end