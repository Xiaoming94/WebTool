class Resume < ActiveRecord::Base
  validates :name, presence: true
  scope :stuff, -> { where(type: 'file') }
end
