class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :website
      t.string :description
      t.string :avatar_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

# Users
# - id
# - name
# - email
#
# # Digests
# - id
# - name
# - avatar_url

# USER is PARENT, thus the CHILD has a relationship to the PARENT
# CHILDREN ARE RELATED TO PARENTS VIA THE PARENT ID

# User (id: 2, name: 'Ryan', email: ryan@fomo.com)
# Digest (id: 5, user_id: 2, name: 'Fomo Monthly', avatar_url: https:fomo.com/favicon.ico)
