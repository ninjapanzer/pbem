class CreatePlotPoints < ActiveRecord::Migration
  def change
    create_table :plot_points do |t|
      t.string :title
      t.text :description
      t.references :story, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
