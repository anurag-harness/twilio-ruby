##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'ConnectionPolicyTarget' do
  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.voice.v1.connection_policies('NYXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                      .targets.create(target: 'https://example.com')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'Target' => 'https://example.com', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://voice.twilio.com/v1/ConnectionPolicies/NYXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Targets',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "connection_policy_sid": "NYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "NEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "friendly_name",
          "target": "sip:sip-box.com:1234",
          "priority": 1,
          "weight": 20,
          "enabled": true,
          "date_created": "2020-03-18T23:31:36Z",
          "date_updated": "2020-03-18T23:31:36Z",
          "url": "https://voice.twilio.com/v1/ConnectionPolicies/NYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Targets/NEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.voice.v1.connection_policies('NYXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .targets.create(target: 'https://example.com')

    expect(actual).to_not eq(nil)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.voice.v1.connection_policies('NYXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                      .targets('NEXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://voice.twilio.com/v1/ConnectionPolicies/NYXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Targets/NEXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "connection_policy_sid": "NYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "NEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "friendly_name",
          "target": "sip:sip-box.com:1234",
          "priority": 1,
          "weight": 20,
          "enabled": true,
          "date_created": "2020-03-18T23:31:36Z",
          "date_updated": "2020-03-18T23:31:37Z",
          "url": "https://voice.twilio.com/v1/ConnectionPolicies/NYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Targets/NEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.voice.v1.connection_policies('NYXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .targets('NEXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.voice.v1.connection_policies('NYXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                      .targets.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://voice.twilio.com/v1/ConnectionPolicies/NYXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Targets',
    ))).to eq(true)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://voice.twilio.com/v1/ConnectionPolicies/NYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Targets?PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://voice.twilio.com/v1/ConnectionPolicies/NYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Targets?PageSize=50&Page=0",
              "next_page_url": null,
              "key": "targets"
          },
          "targets": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "connection_policy_sid": "NYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "sid": "NEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "friendly_name": "friendly_name",
                  "target": "sip:sip-box.com:1234",
                  "priority": 1,
                  "weight": 20,
                  "enabled": true,
                  "date_created": "2020-03-18T23:31:36Z",
                  "date_updated": "2020-03-18T23:31:37Z",
                  "url": "https://voice.twilio.com/v1/ConnectionPolicies/NYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Targets/NEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ]
      }
      ]
    ))

    actual = @client.voice.v1.connection_policies('NYXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .targets.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://voice.twilio.com/v1/ConnectionPolicies/NYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Targets?PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://voice.twilio.com/v1/ConnectionPolicies/NYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Targets?PageSize=50&Page=0",
              "next_page_url": null,
              "key": "targets"
          },
          "targets": []
      }
      ]
    ))

    actual = @client.voice.v1.connection_policies('NYXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .targets.list()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.voice.v1.connection_policies('NYXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                      .targets('NEXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://voice.twilio.com/v1/ConnectionPolicies/NYXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Targets/NEXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "connection_policy_sid": "NYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "NEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "updated_name",
          "target": "sip:sip-updated.com:4321",
          "priority": 2,
          "weight": 10,
          "enabled": false,
          "date_created": "2020-03-18T23:31:36Z",
          "date_updated": "2020-03-18T23:31:37Z",
          "url": "https://voice.twilio.com/v1/ConnectionPolicies/NYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Targets/NEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.voice.v1.connection_policies('NYXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .targets('NEXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.voice.v1.connection_policies('NYXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                      .targets('NEXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://voice.twilio.com/v1/ConnectionPolicies/NYXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Targets/NEXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.voice.v1.connection_policies('NYXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .targets('NEXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()

    expect(actual).to eq(true)
  end
end