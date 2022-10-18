class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :total

  has_many :memberships
  def total
    object.memberships.sum(:charge)
  end
end
