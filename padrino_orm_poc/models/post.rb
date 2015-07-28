class Post
  include Mongoid::Document
  field :title, type: String
  field :content, type: String

  embedded_in :user
end
