require_relative "../spec_helper"

describe "User Model" do
  let(:dongchul){User.create(name:"Dongchul Lee", password:"0000")}

  before do
    dongchul
  end

  it 'should have a name' do
    expect(dongchul.name).to eq("Dongchul Lee")
  end

  it 'should be able to add comments' do
    remy.comments.create(content:"test", artist:nas)
    expect(remy.comments.length).to eq(1)
  end


end