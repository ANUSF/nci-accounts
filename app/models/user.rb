class User
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :login, :connect, :status,
    :surname, :firstname, :init, :title, :position,
    :email, :phone, :mobile, :department, :faculty, :institution,
    :state, :country, :postcode

  def initialize(attrs={})
    attrs.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end
end
