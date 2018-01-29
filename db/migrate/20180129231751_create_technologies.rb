class CreateTechnologies < ActiveRecord::Migration[5.1]
  def change
    create_table :technologies do |t|
      t.string :name

      t.timestamps
    end

    ["Aerospace & Transport", "Industrial Technologies", "Energy and Green Technologies", "Food and Agriculture", "IT & Communications", "Life Sciences"].each do |name|
      tech = Technology.new
      tech.name = name
      tech.save
    end
  end
end
