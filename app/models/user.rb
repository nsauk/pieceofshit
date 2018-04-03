class User < ApplicationRecord
  validates_uniqueness_of :email
  has_secure_password
  after_initialize :set_defaults, unless: :persisted?

  private

  def set_defaults
    self.access_level ||= 1
  end
end
