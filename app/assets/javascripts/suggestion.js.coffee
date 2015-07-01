
# Join Suggestion
# Fade out and show info
@joinsuggestion = (eventId,eventTitle) ->
  data =  { users_event: { event_id: eventId } }
  $.ajax({ method: "POST", url: "users_events", data: data } ).done (html) ->
    $("#" + eventId).fadeOut( 400, () -> $("#" + eventId).remove() );
    $("#flash").html("An <a href='/events/#{eventId}'>" + eventTitle + "</a> teilgenommen!")
    old = parseInt($('#myEventBadge').attr('data-badge'));
    $('#myEventBadge').attr('data-badge', old+1);
  $('#myEventBadge').blink({maxBlinks: 3, blinkPeriod: 1000 });

# Ignore suggestion
# Fade out
@ignoresuggestion = (eventId) ->
  data =  { ignored_event: { event_id: eventId } }
  $('#myEventBadge').attr('data-badge', 4);
  $.ajax({ method: "POST", url: "ignored_events", data: data } ).done (html) ->
    $("#" + eventId).fadeOut( 400, () -> $("#" + eventId).remove() );

# Update Event-Badge
@updateRange = (value) ->
  $('#range').text(value);

# Update Suggestion while sliding distance
@updateSuggestions = (value) ->
  suggestionsToDisplay = $('.myevents_entrycontainer').filter(
    () -> parseInt($(this).attr('data-distance')) <= parseInt(value);  )

  suggestionsToHide = $('.myevents_entrycontainer').filter(
      () -> parseInt($(this).attr('data-distance')) > parseInt(value);  )

  suggestionsToDisplay.fadeIn();
  suggestionsToHide.fadeOut();
