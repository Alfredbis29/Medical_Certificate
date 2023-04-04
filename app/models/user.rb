class User < ApplicationRecord
  has_many :medical_certificates
  enum role: [:admin, :doctor, :nurse]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :nurse
  end
end