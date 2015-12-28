class SetDefaultsForLabels < ActiveRecord::Migration
  def change
    Label.create(name: "rain")
    Label.create(name: "shine")
    Label.create(name: "cloudy")
    Label.create(name: "drizzle")
    Label.create(name: "imminent downpour")
  end
end
