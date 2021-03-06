# frozen_string_literal: true

# edit and view permission to users
class AddEditAndViewPermissionToShareNote < ActiveRecord::Migration[5.2]
  def change
    add_column :sharenotes, :view, :boolean, default: false
    add_column :sharenotes, :edit, :boolean, default: false
  end
end
