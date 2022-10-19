class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :middle_names, :last_name, :email, :phone_number, :image, :user_id
end
