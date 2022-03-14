class Post < ApplicationRecord
  extend Enumerize

  include Discard::Model

  self.discard_column = :archived_at

  STATUSES = %i[draft published].freeze

  belongs_to :user

  enumerize :status, in: STATUSES, predicates: true, scope: true

  validates :title, :status, presence: true
end
