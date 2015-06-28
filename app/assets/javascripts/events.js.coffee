# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Methode um die Teilnahme an einer Veranstaltung zurückzunehmen
@resignEvent = (user_event) ->
    data =  user_event
    $.ajax({ method: "DELETE", url: "/users_events/" + user_event.id} ).done (html) ->
      $("#" + user_event.event_id).fadeOut( 400 );
      $("#" + user_event.event_id).remove();
      old = parseInt($('#myEventBadge').attr('data-badge'));
      $('#myEventBadge').attr('data-badge', old-1);
    $('#myEventBadge').blink({maxBlinks: 3, blinkPeriod: 1000 });

@resignEventShow = (user_event) ->
    data =  user_event
    $.ajax({ method: "DELETE", url: "/users_events/" + user_event.id} ).done (html) ->
      $("#" + user_event.event_id).fadeOut( 400 );
      $("#show_event_resigncontainer_id").fadeOut( 400 );
      $("#write_comments_id").fadeOut( 400 );
      old = parseInt($('#myEventBadge').attr('data-badge'));
      $('#myEventBadge').attr('data-badge', old-1);
      $('#myEventBadge').blink({maxBlinks: 3, blinkPeriod: 1000 });
      window.location.reload();

@kickEvent = (user_event) ->
    data =  user_event
    $.ajax({ method: "DELETE", url: "/users_events/" + user_event.id} ).done (html) ->
      $("#" + user_event.user_id).fadeOut( 400 );

@updateEventList = (eventlist, object) ->
  if   $('#' + object).prop('checked') is false
    $('#' + eventid).fadeOut( 400 ) for eventid in eventlist
  else
    $('#' + eventid).fadeIn( 400 ) for eventid in eventlist;

#  $('#' + object).stopPropagation();

@participateEvent = (eventId,eventTitle) ->
  data =  { users_event: { event_id: eventId } }
  $.ajax({ method: "POST", url: "/users_events/", data: data } ).done (html) ->
    $("#show_event_resigncontainer_id").fadeOut(400);
    old = parseInt($('#myEventBadge').attr('data-badge'));
    $('#myEventBadge').attr('data-badge', old+1);
    $('#myEventBadge').blink({maxBlinks: 3, blinkPeriod: 1000 });
    window.location.reload();
