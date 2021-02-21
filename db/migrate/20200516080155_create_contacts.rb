class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :first_name  #苗字
      t.string :last_name  #名前
      t.string :first_kana  #ミョウジ
      t.string :last_kana  #ナマエ
      t.string :tel #携帯番号
      t.string :email #メールアドレス
      t.string :address #住所
      t.string :ago #年齢


      t.string :company #今の働いている会社
      t.string :saraly #給与

      t.string :importance #希望条件
      t.string :period #転職希望時期

      t.string :next_address #転職希望エリア

      t.string :qualificartion #資格

      t.string :remarks #相談内容・その他
      t.timestamps
    end
  end
end
