class ContactController < ApplicationController
  def index
    @contact = Contact.new
    render :action => 'index'
  end

  def confirm
    @contact = Contact.new(contact_params)
    if @contact.valid?
      render :action =>  'confirm'
    else
      render :action => 'index'
    end
  end

  def thanks
    @contact = Contact.new(contact_params)
    ContactMailer.received_email(@contact).deliver
    ContactMailer.send_email(@contact).deliver
  end

  private
  def contact_params
    params.require(:contact).permit(
      :first_name,  #苗字
      :last_name,  #名前
      :first_kana,  #ミョウジ
      :last_kana,  #ナマエ
      :tel, #携帯番号
      :email, #メールアドレス
      :address, #住所
      :ago, #年齢

      :company, #今の働いている会社
      :saraly, #給与

      :importance, #希望条件
      :period, #転職希望時期

      :next_address, #転職希望エリア
      :qualificartion, #資格

      :remarks #相談内容・その他
    )
  end
end
