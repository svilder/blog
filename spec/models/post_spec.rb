require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
  end

  # context "with 2 or more comments" do
  #   it "orders them in reverse chronologically" do
  #     post = Post.create!
  #     comment1 = post.comments.create!(:body => "first comment")
  #     comment2 = post.comments.create!(:body => "second comment")
  #     expect(post.reload.comments).to eq([comment2, comment1])
  #   end
  # end

  # describe 'validations' do
  #     # Here we're using FactoryBot, but you could use anything
  #     post = Post.create!

  #     it { should validate_presence_of(:title) }
  #   end
end
