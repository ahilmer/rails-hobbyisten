# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Methode um die Teilnahme an einer Veranstaltung zurückzunehmen
@resignEvent = (user_event) ->
    data =  user_event
    $.ajax({ method: "DELETE", url: "users_events/" + user_event.id} ).done (html) ->
      $("#" + user_event.event_id).fadeOut( 400 );
      old = parseInt($('#myEventBadge').attr('data-badge'));
      $('#myEventBadge').attr('data-badge', old-1);
    $('#myEventBadge').blink({maxBlinks: 3, blinkPeriod: 1000 });

@updateEventListhobby = (checked, eventlist, object) ->
  $('.myevents_entrycontainer').filter( () ->
    $(this).attr('id') in eventlist; ).fadeOut();



@updateEventList = (checked, eventlist, object, objecttype) ->
  EventsFade = switch objecttype
    when "hobby" then ->
      hobbyid = object.id ->
      eventswithhobbies = $.grep(eventlist, (event, i) ->
        event.hobbies.find(hobbyid) != null;
        );
      EventsFade = $('.myevents_entrycontainer').filter( () ->
        eventswithhobbies.find($(this).attr('id')); )
    when "location" then ->

    when "creator" then ->

    else null

  EventsFade.fadeOut();
