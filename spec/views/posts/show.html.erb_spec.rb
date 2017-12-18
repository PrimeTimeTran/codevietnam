require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  let(:valid_attributes) { {title: Faker::University.name, body: Faker::Lorem.paragraphs(1).join("\n")} }
  before(:each) do
    @post = assign(:post, Post.create!(valid_attributes))
  end

  it "renders attributes in <p>" do
    render
  end
end
