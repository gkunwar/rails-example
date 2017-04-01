require 'test_helper'

class HostedEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hosted_event = hosted_events(:one)
  end

  test "should get index" do
    get hosted_events_url
    assert_response :success
  end

  test "should get new" do
    get new_hosted_event_url
    assert_response :success
  end

  test "should create hosted_event" do
    assert_difference('HostedEvent.count') do
      post hosted_events_url, params: { hosted_event: { date: @hosted_event.date, description: @hosted_event.description, event_type: @hosted_event.event_type, host_name: @hosted_event.host_name, location: @hosted_event.location, published: @hosted_event.published, title: @hosted_event.title } }
    end

    assert_redirected_to hosted_event_url(HostedEvent.last)
  end

  test "should show hosted_event" do
    get hosted_event_url(@hosted_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_hosted_event_url(@hosted_event)
    assert_response :success
  end

  test "should update hosted_event" do
    patch hosted_event_url(@hosted_event), params: { hosted_event: { date: @hosted_event.date, description: @hosted_event.description, event_type: @hosted_event.event_type, host_name: @hosted_event.host_name, location: @hosted_event.location, published: @hosted_event.published, title: @hosted_event.title } }
    assert_redirected_to hosted_event_url(@hosted_event)
  end

  test "should destroy hosted_event" do
    assert_difference('HostedEvent.count', -1) do
      delete hosted_event_url(@hosted_event)
    end

    assert_redirected_to hosted_events_url
  end
end
