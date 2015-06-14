# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Methode um an einer Veranstaltung teilzunehmen
@joinEvent = (event) ->
  data =  { users_event: { event_id: event.id } }
  $.ajax({ method: "POST", url: "users_events", data: data } ).done (html) ->
    $("#" + event.id).fadeOut( 400 );
    $("#flash").html("An <a href='/events/#{event.id}'>" + event.title + "</a> teilgenommen!")


# Methode um eine Versantaltung zu ignorieren, sodass sie niocht mehr bei den Vorschlägen auftaucht
@ignoreEvent = (event) ->
  data =  { ignored_event: { event_id: event.id } }
  $.ajax({ method: "POST", url: "ignored_events", data: data } ).done (html) ->
    $("#" + event.id).fadeOut( 400 );


# Methode um die Teilnahme an einer Veranstaltung zurückzunehmen
@resignEvent = (event) ->
