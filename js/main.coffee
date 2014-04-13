# coffee --watch --join js/app.js --compile js/data.coffee js/html.coffee js/main.coffee js/onload.coffee

$ ->
  $('.deadmen-list').on 'click', '.deadmen-show-detail', (e) ->
    e.preventDefault()

    deadman = deadmen_5[$(this).data('id')]
    plot_selected_deadman(deadman)
    window.history.pushState({url: '/index.html'}, 'Title', "?#{deadman.id}=average")

  $('#deadmen-types-list').on 'click', 'a.types', (e) ->
    e.preventDefault()

    deadman = deadmen_5[$(this).closest('#deadman-info').data('id')]
    if $.isEmptyObject(deadman)
      $('.container > h2').css('color', 'red').html('[ Select Deadman <i class="fa fa-exclamation"></i> ]')
      return

    plot_selected_deadmans_stats(deadman, $(this).data('type'))
    window.history.pushState({}, 'Title', "?#{deadman.id}=#{$(this).data('type')}")

  plot_selected_deadman = (deadman, type = 'average') ->
    reset_colors()

    $('.container > h2').html(deadman.name)
    $('#deadman-info > img').attr('src', "img/#{deadman.id}.jpg")
    $('#deadman-info').data('id', deadman.id)

    plot_selected_deadmans_stats(deadman, type)

  plot_selected_deadmans_stats = (deadman, type = 'average') ->
    reset_colors()

    rank = get_rank_color(deadman, type)
    $('.fa-power-off').css('color', color_types[rank]).attr('title', "#{rank} type")
    $("#deadmen-types-list a[data-type='#{type}']").css('color', '#333').css('font-weight', 'bold')

    $.each stats_list, (i, stat) ->
      incdec = (100 + types[type].stats[stat]) / 100

      $(".max-stats .#{stat}", '#deadman-stats')
        .html(Math.ceil(deadman.max_stats[stat] * incdec))
      $(".boosted-stats .#{stat}", '#deadman-stats')
        .html(Math.ceil((deadman.max_stats[stat] * incdec) + (deadman.max_stats[stat] * 0.2)))

  reset_colors = ->
    $('.container > h2').css('color', '#333')
    $('.fa-power-off').css('color', '#333')
    $('#deadmen-types-list a').css('color', '#428bca').css('font-weight', 'normal')

  get_rank_color = (deadman, type) ->
    selected_rank = ''
    $.each deadman.type_ranks, (rank, types) ->
      if $.inArray(type, types) != -1
        selected_rank = rank
        return

    return selected_rank

  load_from_url = ->
    url = $.url()
    $.each url.param(), (deadman, type) ->
      plot_selected_deadman(deadmen_5[deadman], type)
  load_from_url() # Load when directly visited

  $(window).on 'popstate', (e) ->
    load_from_url()