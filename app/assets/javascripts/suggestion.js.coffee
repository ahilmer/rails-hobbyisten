# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Methode um an einer Veranstaltung teilzunehmen
@joinsuggestion = (eventId,eventTitle) ->
  data =  { users_event: { event_id: eventId } }
  $.ajax({ method: "POST", url: "users_events", data: data } ).done (html) ->
    $("#" + eventId).fadeOut( 400, () -> $("#" + eventId).remove() );
    $("#flash").html("An <a href='/events/#{eventId}'>" + eventTitle + "</a> teilgenommen!")
    old = parseInt($('#myEventBadge').attr('data-badge'));
    $('#myEventBadge').attr('data-badge', old+1);
  $('#myEventBadge').blink({maxBlinks: 3, blinkPeriod: 1000 });

# Methode um eine Versantaltung zu ignorieren, sodass sie niocht mehr bei den Vorschlägen auftaucht
@ignoresuggestion = (eventId) ->
  data =  { ignored_event: { event_id: eventId } }
  $('#myEventBadge').attr('data-badge', 4);
  $.ajax({ method: "POST", url: "ignored_events", data: data } ).done (html) ->
    $("#" + eventId).fadeOut( 400, () -> $("#" + eventId).remove() );

@updateRange = (value) ->
  $('#range').text(value);

@updateSuggestions = (value) ->
  suggestionsToDisplay = $('.suggestion').filter(
    () -> parseInt($(this).attr('data-distance')) <= parseInt(value);  )

  suggestionsToHide = $('.suggestion').filter(
      () -> parseInt($(this).attr('data-distance')) > parseInt(value);  )

  suggestionsToDisplay.fadeIn();
  suggestionsToHide.fadeOut();
