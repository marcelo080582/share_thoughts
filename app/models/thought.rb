class Thought < ApplicationRecord
  include Reactable

  belongs_to :user
  acts_as_commentable
end
