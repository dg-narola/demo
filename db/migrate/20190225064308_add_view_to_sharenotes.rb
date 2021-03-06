# frozen_string_literal: true

# adding view to sharenote
class AddViewToSharenotes < ActiveRecord::Migration[5.2]
  def change
    add_column :sharenotes, :view, :boolean, default: true
  end
end
