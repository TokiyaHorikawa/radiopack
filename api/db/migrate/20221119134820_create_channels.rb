class CreateChannels < ActiveRecord::Migration[7.0]
  def change
    create_table :channels do |t|
      t.string :title
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
