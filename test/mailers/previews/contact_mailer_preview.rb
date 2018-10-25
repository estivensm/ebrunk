# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/first_contact
  def first_contact
    ContactMailer.first_contact
  end

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/call_acepted
  def call_acepted
    ContactMailer.call_acepted
  end

end
