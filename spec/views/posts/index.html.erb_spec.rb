require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  let(:valid_attributes) { {title: Faker::University.name, body: Faker::Lorem.paragraphs(1).join("\n")} }
  let(:valid_attributes_second) { {title: Faker::University.name, body: Faker::Lorem.paragraphs(1).join("\n")} }
  before(:each) do
    assign(:posts, [
      Post.create!(valid_attributes),
      Post.create!(valid_attributes_second)
    ])
  end

  it "renders a list of posts" do
    render
  end
end
