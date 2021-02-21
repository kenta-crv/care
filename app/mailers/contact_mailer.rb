class ContactMailer < ActionMailer::Base
  default from: "mail@comicomi.cc"
  def received_email(contact)
    @contact = contact
    mail to: "mail@comicomi.cc"
    mail(subject: 'Comicomiよりお問い合わせがありました') do |format|
      format.text
    end
  end

  def send_email(contact)
    @contact = contact
    mail to: contact.email
    mail(subject: 'Comicomiにお問い合わせ頂きありがとうございます') do |format|
      format.text
    end
  end

end
