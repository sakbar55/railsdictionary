class AddGoogleResultsToDefinitions < ActiveRecord::Migration
  def change
  add_column :definitions, :google_results, :text
  end
end
