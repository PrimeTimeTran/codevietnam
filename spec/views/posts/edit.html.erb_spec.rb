require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  let(:valid_attributes) { {title: Faker::University.name, body: Faker::Lorem.paragraphs(1).join("\n")} }
  let(:invalid_attributes) { {title: "", body: ""} }

  before(:each) do
    @post = assign(:post, Post.create!(valid_attributes))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do
    end
  end
end
