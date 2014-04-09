# Initialize html from data

$ ->
  $.each deadmen_5, (i, deadman) ->
    $('#deadmen-5-list + ul').append("<li><a href='#' data-id='#{deadman.id}' class='deadmen-show-detail'>#{deadman.name}</a></li>")

  $.each types, (i, type) ->
    $('#deadmen-types-list').append("<li><a href='#' class='types' data-type='#{type.id}'>#{type.id}</a></li>")

  $.each stats_list, (i, stat) ->
    $('table thead tr', '#deadman-stats').append("<th class='#{stat}'>#{stat}</th>")
    $('table tbody tr.max-stats', '#deadman-stats').append("<td class='#{stat}'>0</td>")
    $('table tbody tr.boosted-stats', '#deadman-stats').append("<td class='#{stat}'>0</td>")
