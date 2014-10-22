require "rails_helper"

RSpec.describe CatMailer, :type => :mailer do
  test "invite" do
    assert_equal ['me@example.com'], email.from
    assert_equal ['friend@example.com'], email.to
    assert_equal 'You have been invited by @example.com'
end
