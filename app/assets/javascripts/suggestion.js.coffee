# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Methode um an einer Veranstaltung teilzunehmen
@joinsuggestion = (event) ->
  data =  { users_event: { event_id: event.id } }
  $.ajax({ method: "POST", url: "users_events", data: data } ).done (html) ->
    $("#" + event.id).fadeOut( 400, () -> $("#" + event.id).remove() );
    $("#flash").html("An <a href='/events/#{event.id}'>" + event.title + "</a> teilgenommen!")
    old = parseInt($('#myEventBadge').attr('data-badge'));
    $('#myEventBadge').attr('data-badge', old+1);
  $('#myEventBadge').blink({maxBlinks: 3, blinkPeriod: 1000 });

# Methode um eine Versantaltung zu ignorieren, sodass sie niocht mehr bei den Vorschlägen auftaucht
@ignoresuggestion = (event) ->
  data =  { ignored_event: { event_id: event.id } }
  $('#myEventBadge').attr('data-badge', 4);
  $.ajax({ method: "POST", url: "ignored_events", data: data } ).done (html) ->
    $("#" + event.id).fadeOut( 400, () -> $("#" + event.id).remove() );

@updateRange = (value) ->
  $('#range').text(value);

@updateSuggestions = (value) ->
  suggestionsToDisplay = $('.suggestion').filter(
    () -> parseInt($(this).attr('data-distance')) <= parseInt(value);  )

  suggestionsToHide = $('.suggestion').filter(
      () -> parseInt($(this).attr('data-distance')) > parseInt(value);  )

  suggestionsToDisplay.fadeIn();
  suggestionsToHide.fadeOut();
