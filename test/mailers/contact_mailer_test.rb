require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "user_query" do
    mail = ContactMailer.user_query
    assert_equal "User query", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
