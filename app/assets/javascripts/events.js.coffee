# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Methode um die Teilnahme an einer Veranstaltung zurückzunehmen
@resignEvent = (event) ->
  data =  { users_event: { event_id: event.id } }
  $.ajax({ method: "DELETE", url: "users_events", data: data } ).done (html) ->
    $("#" + event.id).fadeOut( 400 );