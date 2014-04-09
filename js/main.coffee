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

    $('.container > h2').html(deadman_selected.name)
    $('#deadman-info > img').attr('src', "img/#{deadman_selected.id}.jpg")

    plot_selected_deadmans_stats('average')

  plot_selected_deadmans_stats = (type_selected) ->
    reset_colors()

    $('.fa-power-off').css('color', color_types[get_rank_color(type_selected)]).attr('title', "#{get_rank_color(type_selected)} type")

    $.each stats_list, (i, stat) ->
      incdec = (100 + types[type_selected].stats[stat]) / 100

      $(".max-stats .#{stat}", '#deadman-stats')
        .html(Math.ceil(deadman_selected.max_stats[stat] * incdec))
      $(".boosted-stats .#{stat}", '#deadman-stats')
        .html(Math.ceil((deadman_selected.max_stats[stat] * incdec) + (deadman_selected.max_stats[stat] * 0.2)))

  reset_colors = ->
    $('.container > h2').css('color', '#333')
    $('.fa-power-off').css('color', '#333')

  get_rank_color = (type_selected) ->
    selected_rank = ''
    $.each deadman_selected.type_ranks, (rank, types) ->
      if $.inArray(type_selected, types) != -1
        selected_rank = rank
        return

    return selected_rank