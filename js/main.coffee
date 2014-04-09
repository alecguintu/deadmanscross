# coffee --watch --join js/app.js --compile js/data.coffee js/html.coffee js/main.coffee

$ ->
  deadman_selected = {}
  $('.deadmen-list').on 'click', '.deadmen-show-detail', (e) ->
    e.preventDefault()

    deadman_selected = deadmen_5[$(this).data('id')]
    plot_selected_deadman()

  $('#deadmen-types-list').on 'click', 'a.types', (e) ->
    e.preventDefault()
    if $.isEmptyObject(deadman_selected)
      $('.container > h2').css('color', 'red').html('[ Select Deadman <i class="fa fa-exclamation"></i> ]')
      return

    plot_selected_deadmans_stats($(this).data('type'))

  plot_selected_deadman = (type_selected = '') ->
    reset_colors()

    deadman = deadman_selected
    $('.container > h2').html(deadman.name)
    $('#deadman-info > img').attr('src', "img/#{deadman.id}.jpg")

    plot_selected_deadmans_stats('average')

  plot_selected_deadmans_stats = (type_selected) ->
    reset_colors()

    deadman = deadman_selected

    $.each stats_list, (i, stat) ->
      percentage = (100 + types[type_selected].stats[stat]) / 100

      $(".max-stats .#{stat}", '#deadman-stats')
        .html(Math.ceil(deadman.max_stats[stat] * percentage))
      $(".boosted-stats .#{stat}", '#deadman-stats')
        .html(Math.ceil((deadman.max_stats[stat] * percentage) + deadman.boosts_on_stats[stat]))

  reset_colors = ->
    $('.container > h2').css('color', '#333')
