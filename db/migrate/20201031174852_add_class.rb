class AddClass < ActiveRecord::Migration[5.2]
  def change
    create_table :capabilities do |t|
      t.actable
      t.integer :contract_id
      t.timestamps
    end

    create_table :reconciliations do |t|
      t.references :contract, foreign_key: true
      t.references :charge, foreign_key: true
      t.integer :cost_charge_id
    end

    create_table :bank_instructions do |t|
      t.string :type
      t.decimal :amount, :null => false
    end

    create_table :contracts do |t|
      t.string :type
      t.references :order, foreign_key: true
      t.decimal :amount, :null => false
    end

    create_table :orders do |t|
      t.string :type
      t.decimal :amount, :null => false
    end

    create_table :charges do |t|
      t.string :type
      t.references :contract, foreign_key: true
      t.decimal :amount, :null => false
    end

    create_table :ledgers do |t|
      t.references :charge, foreign_key: true
      t.decimal :amount, :null => false
    end
  end
end
