# == Schema Information
#
# Table name: boards
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Board < ApplicationRecord
  has_many :post # has_many(:post)

  validates :name, presence: true, uniqueness: true
  # validates(:name, { :presence => true, :uniqueness => true })
end
