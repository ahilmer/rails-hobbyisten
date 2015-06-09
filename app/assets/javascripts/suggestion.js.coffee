# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@joinEvent = (eventId) ->
  data =  { users_event: { event_id: eventId } }
  console.log data
  $.ajax({ method: "POST", url: "users_events", data: data } ).done (html) ->
    console.log html
    console.log("#" + eventId)
    $("#" + eventId).remove()

@ignoreEvent = (eventId) ->
  data =  { ignored_event: { event_id: eventId } }
  console.log data
  $.ajax({ method: "POST", url: "ignored_events", data: data } ).done (html) ->
    console.log html
    console.log("#" + eventId)
    $("#" + eventId).remove()
