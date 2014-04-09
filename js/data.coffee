stats_list = [ 'hlt', 'psy', 'atk', 'def', 'spd', 'int' ]

types = {
  average: { id: 'average', stats: { hlt: 0,  psy: 0,  atk: 0,  def: 0,  spd: 0,  int: 0  } }
  strong:  { id: 'strong',  stats: { hlt: 0,  psy: 0,  atk: 10, def: 0,  spd: 0,  int: -5 } }
  quick:   { id: 'quick',   stats: { hlt: -5, psy: 0,  atk: 0,  def: 0,  spd: 10, int: 0  } }
  mental:  { id: 'mental',  stats: { hlt: 0,  psy: 10, atk: -5, def: 0,  spd: 0,  int: 0  } }
  fresh:   { id: 'fresh',   stats: { hlt: 10, psy: 0,  atk: 0,  def: 0,  spd: -5, int: 0  } }
  tough:   { id: 'tough',   stats: { hlt: 0,  psy: -5, atk: 0,  def: 10, spd: 0,  int: 0 } }
  smart:   { id: 'smart',   stats: { hlt: 0,  psy: 0,  atk: 0,  def: -5, spd: 0,  int: 10 } }
  perfect: { id: 'perfect', stats: { hlt: 10, psy: 10, atk: 10, def: 10, spd: 10, int: 10 } }
}

deadmen_5 = {
  # blank_template: {
  #   id: ''
  #   name: ''
  #   max_stats: { hlt:, psy:, atk:, def:, spd:, int: }
  #   boosts_on_stats: { hlt: 10, psy: 10, atk: 10, def: 10, spd: 10, int: 10 }
  #   types: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] }
  #   skills: []
  # }

  abraham_lincoln: {
    id: 'abraham_lincoln'
    name: 'Abraham Lincoln'
    max_stats: { hlt: 2570, psy: 2570, atk: 2430, def: 2220, spd: 2490, int: 2650 }
    boosts_on_stats: { hlt: 517, psy: 517, atk: 486, def: 444, spd: 498, int: 530 }
    types: { awesome: ['perfect'], best: ['smart', 'quick'], decent: ['tough', 'average'], bad: ['fresh', 'strong'] }
    skills: [ 'burner +2', 'atk -20', 'int +20', 'burner +3', 'burner +4' ]
  }

  attack_helicopter: {
    id: 'attack_helicopter'
    name: 'Attack Helicopter'
    max_stats: { hlt: 2550, psy: 2300, atk: 2400, def: 2310, spd: 2570, int: 2450 }
    boosts_on_stats: { hlt: 510, psy: 460, atk: 480, def: 462, spd: 514, int: 490 }
    types: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] }
    skills: []
  }

  satan: {
    id: 'satan'
    name: 'Satan'
    max_stats: { hlt: 2200, psy: 2800, atk: 2480, def: 2520, spd: 2490, int: 2590 }
    boosts_on_stats: { hlt: 440, psy: 560, atk: 496, def: 504, spd: 498, int: 518 }
    types: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] }
    skills: []
  }

  marie_antoinette: {
    id: 'marie_antoinette'
    name: 'Marie Antoinette'
    max_stats: { hlt: 2425, psy: 2550, atk: 2570, def: 2450, spd: 2530, int: 2470 }
    boosts_on_stats: { hlt: 485, psy: 510, atk: 514, def: 490, spd: 506, int: 494 }
    types: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] }
    skills: []
  }

  asura: {
    id: 'asura'
    name: 'Asura'
    max_stats: { hlt: 2820, psy: 2430, atk: 2500, def: 2550, spd: 2350, int: 2450 }
    boosts_on_stats: { hlt: 564, psy: 486, atk: 500, def: 510, spd: 470, int: 490 }
    types: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }

  joan_of_arc: {
    id: 'joan_of_arc'
    name: 'Joan of Arc'
    max_stats: { hlt: 2800, psy: 2400, atk: 3000, def: 2550, spd: 2500, int: 2400 }
    boosts_on_stats: { hlt: 560, psy: 480, atk: 600, def: 510, spd: 500, int: 480 }
    types: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }

  moby_dick: {
    id: 'moby_dick'
    name: 'Moby Dick'
    max_stats: { hlt: 2420, psy: 2240, atk: 2300, def: 2320, spd: 2400, int: 3000 }
    boosts_on_stats: { hlt: 484, psy: 448, atk: 460, def: 464, spd: 480, int: 600 }
    types: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }


  napoleon_bonaparte: {
    id: 'napoleon_bonaparte'
    name: 'Napoleon Bonaparte'
    max_stats: { hlt: 2590, psy: 2550, atk: 2560, def: 2550, spd: 2430, int: 2490 }
    boosts_on_stats: { hlt: 518, psy: 510, atk: 512, def: 510, spd: 486, int: 498 }
    types: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }

  pluto: {
    id: 'pluto'
    name: 'Pluto'
    max_stats: { hlt: 2440, psy: 2350, atk: 2680, def: 2800, spd: 2510, int: 2440 }
    boosts_on_stats: { hlt: 488, psy: 470, atk: 536, def: 560, spd: 502, int: 488 }
    types: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }

  yang_guifei: {
    id: 'yang_guifei'
    name: 'Yang Guifei'
    max_stats: { hlt: 2550, psy: 2740, atk: 2140, def: 2470, spd: 2770, int: 2550 }
    boosts_on_stats: { hlt: 510, psy: 548, atk: 428, def: 494, spd: 554, int: 510 }
    types: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }

  titan: {
    id: 'titan'
    name: 'Titan'
    max_stats: { hlt: 2700, psy: 2560, atk: 2820, def: 2680, spd: 2150, int: 2300 }
    boosts_on_stats: { hlt: 540, psy: 512, atk: 564, def: 536, spd: 430, int: 460 }
    types: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }


  abhorrent_airship: {
    id: 'abhorrent_airship'
    name: 'Abhorrent Airship'
    max_stats: { hlt: 2775, psy: 2390, atk: 2600, def: 2480, spd: 2445, int: 2560 }
    boosts_on_stats: { hlt: 555, psy: 478, atk: 520, def: 496, spd: 489, int: 512 }
    types: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }

  genie_in_a_lamp: {
    id: 'genie_in_a_lamp'
    name: 'Genie in a Lamp'
    max_stats: { hlt: 2595, psy: 2525, atk: 2500, def: 2500, spd: 2560, int: 2498 }
    boosts_on_stats: { hlt: 519, psy: 505, atk: 500, def: 500, spd: 512, int: 499 }
    types: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }

  mars: {
    id: 'mars'
    name: 'Mars'
    max_stats: { hlt: 2680, psy: 2680, atk: 2800, def: 0, spd: 2130, int: 0 }
    boosts_on_stats: { hlt: 536, psy: 536, atk: 560, def: 0, spd: 426, int: 0 }
    types: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }

  rubeus: {
    id: 'rubeus'
    name: 'Rubeus'
    max_stats: { hlt: 2443, psy: 2375, atk: 2480, def: 2518, spd: 2670, int: 2438 }
    boosts_on_stats: { hlt: 488, psy: 475, atk: 496, def: 503, spd: 534, int: 487 }
    types: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }

  isaac_newton: {
    id: 'isaac_newton'
    name: 'Isaac Newton'
    max_stats: { hlt: 2330, psy: 2550, atk: 2765, def: 2225, spd: 2530, int: 2830 }
    boosts_on_stats: { hlt: 466, psy: 510, atk: 553, def: 445, spd: 506, int: 566 }
    types: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }

  cleopatra: {
    id: 'cleopatra'
    name: 'Cleopatra'
    max_stats: { hlt: 2550, psy: 2580, atk: 2420, def: 2480, spd: 2450, int: 2400 }
    boosts_on_stats: { hlt: 510, psy: 516, atk: 484, def: 496, spd: 490, int: 480 }
    types: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }
}