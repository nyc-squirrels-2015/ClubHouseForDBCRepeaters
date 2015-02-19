require_relative '../spec_helper'

describe "Auth" do
  let(:user) {User.create(name:'James Bond',password:'1234')}

  before do
    user
  end

  it 'should have a login' do
    get '/'
    expect(last_response.body).to include("login")
  end

  it 'should have a signup' do
    get '/'
    expect(last_response.body).to include("signup")
  end

  it 'should respond to signup' do
    post '/signup', params={ user:{name:'James Bond',password:'1234'}}
    expect(last_response).to be_redirect

    follow_redirect!

  end
end