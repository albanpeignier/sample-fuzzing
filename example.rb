require 'store_model'

class Article
  include StoreModel::Model

  attribute :name, :string
  attribute :description, :string
  enum :status, %i[active archived], default: :active
  attribute :price, :integer
  attribute :stock_quantity, :integer

  validates :name, :status, :price, :stock_quantity, presence: true

  def self.from_json(data)
    to_type.deserialize(data)
  end
end
