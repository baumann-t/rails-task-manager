class Task < ApplicationRecord
  after_initialize :init
  validates :title, :details, presence: true

  def init
    self.completed ||= false
  end
end
