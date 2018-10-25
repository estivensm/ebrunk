class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.first_contact.subject
  #
  def first_contact(contact)
    @contact = contact
    @property = Property.find(contact.property_id)
    @runner = Runner.find(@property.runner_id)
    mail(to: @runner.email, subject: "Alguien quiere conocer un propiedad")
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.call_acepted.subject
  #
  def call_acepted
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
