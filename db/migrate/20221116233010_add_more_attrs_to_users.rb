class AddMoreAttrsToUsers < ActiveRecord::Migration[7.0]
  def change
    # anatomy of migration file
    # 1. invoke a db transformation FUNCTION (METHOD)
    # 2. pass in arguments

    # order of arguments:
    # table name, attribute label, data type
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :job_role, :string
  end
end
