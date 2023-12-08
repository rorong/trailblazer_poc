# frozen_string_literal: true

class CreateStaticPages < ActiveRecord::Migration[7.0]
  def change
    create_table :static_pages do |t|
      t.string :title
      t.text :content
      t.boolean :published

      t.timestamps
    end
  end
end
