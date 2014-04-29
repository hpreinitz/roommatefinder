class AddDeviseToProfiles < ActiveRecord::Migration
    def change
    create_table :profiles do |t|
      ## Database authenticatable
      #t.change :email, :string,     :null => false, :default => ""
      t.string :email,              null: false, default: ""

      #t.change :encrypted_password, :string,     :null => false, :default => ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      #t.change :reset_password_token, :string,     :null => false, :default => ""
      t.string   :reset_password_token

      #t.change :reset_password_sent_at, :datetime
      t.datetime :reset_password_sent_at

      ## Rememberable
      #t.change :remember_created_at, :datetime
      t.datetime :remember_created_at

      ## Trackable
      #t.change :sign_in_count, :integer,     :null => false, :default => 0
      t.integer  :sign_in_count, default: 0, null: false

      #t.change :current_sign_in_at, :datetime
      t.datetime :current_sign_in_at

      #t.change :last_sign_in_at, :datetime
      t.datetime :last_sign_in_at

      #t.change :current_sign_in_ip, :string,     :null => false, :default => ""
      t.string   :current_sign_in_ip

      #t.change :last_sign_in_ip, :string,     :null => false, :default => ""
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps
    end

    add_index :profiles, :email,                unique: true
    add_index :profiles, :reset_password_token, unique: true
    # add_index :profiles, :confirmation_token,   unique: true
    # add_index :profiles, :unlock_token,         unique: true
  end
end
