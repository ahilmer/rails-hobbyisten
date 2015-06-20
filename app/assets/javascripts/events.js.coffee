# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Methode um die Teilnahme an einer Veranstaltung zurückzunehmen
@resignEvent = (event, user) ->
    data =  { users_events: { event_id: event.id; user_id: user.id } }
    $.ajax({ method: "DELETE", url: "users_events/" + data.id, data: data } ).done (html) ->
      $("#" + event.id).fadeOut( 400 );
