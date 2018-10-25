require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "first_contact" do
    mail = ContactMailer.first_contact
    assert_equal "First contact", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "call_acepted" do
    mail = ContactMailer.call_acepted
    assert_equal "Call acepted", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
