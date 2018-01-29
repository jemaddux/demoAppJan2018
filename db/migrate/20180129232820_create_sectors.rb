class CreateSectors < ActiveRecord::Migration[5.1]
  def change
    create_table :sectors do |t|
      t.string :name

      t.timestamps
    end


    ["Food and Agriculture", "Life Sciences: Medical Devices", "Life Sciences: Medical Diagnostics", "Life Sciences: Biopharma", "Computing: Hardware", "Energy", "Computing: Software", "Computing: Networks", "Connected Devices", "Chemicals", "Space Exploration"].each do |name|
      sector = Sector.new
      sector.name = name
      sector.save
    end
  end
end
