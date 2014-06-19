class CreateSoundFeeds < ActiveRecord::Migration
  def change
    create_table :sound_feeds do |t|
      t.blob :sound
      t.string :owner

      t.timestamps
    end
  end
end
