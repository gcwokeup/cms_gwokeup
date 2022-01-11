class Post < ApplicationRecord
  validates :body, :title, presence: true

  after_create_commit { broadcast_prepend_to "posts"}
end
