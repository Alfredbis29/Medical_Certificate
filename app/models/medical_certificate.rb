class MedicalCertificate < ApplicationRecord
  belongs_to :patient
  belongs_to :user
  accepts_nested_attributes_for :patient
end