require 'spec_helper'

RSpec.describe User do
  context 'Create a new user' do
    it 'with posts' do
      user = User.new(name: 'John', age: 25)
      user.save!

      post_1 = Post.new(title: 'Post title 1', content: 'Post 1 content')
      post_2 = Post.new(title: 'Post title 2', content: 'Post 2 content')
      post_3 = Post.new(title: 'Post title 3', content: 'Post 3 content')

      user.posts << post_1
      user.posts << post_2
      user.posts << post_3
      user.save!

      # Load user from database
      user = User.find(user.id)
      expect(user.posts.length).to eq(3)
    end
  end
end
