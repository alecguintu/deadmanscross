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
    boosts_on_stats: { hlt: 10, psy: 10, atk: 10, def: 10, spd: 10, int: 10 }
    types: { awesome: ['perfect'], best: ['smart', 'quick'], decent: ['tough', 'average'], bad: ['fresh', 'strong'] }
    skills: [ 'burner +2', 'atk -20', 'int +20', 'burner +3', 'burner +4' ]
  }

  attack_helicopter: {
    id: 'attack_helicopter'
    name: 'Attack Helicopter'
    max_stats: { hlt: 2550, psy: 2300, atk: 2400, def: 2310, spd: 2570, int: 2450 }
    boosts_on_stats: { hlt: 10, psy: 10, atk: 10, def: 10, spd: 10, int: 10 }
    types: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] }
    skills: []
  }

  satan: {
    id: 'satan'
    name: 'Satan'
    max_stats: { hlt: 2200, psy: 2800, atk: 2480, def: 2520, spd: 2490, int: 2590 }
    boosts_on_stats: { hlt: 10, psy: 10, atk: 10, def: 10, spd: 10, int: 10 }
    types: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] }
    skills: []
  }

  marie_antoinette: {
    id: 'marie_antoinette'
    name: 'Marie Antoinette'
    max_stats: { hlt: 2425, psy: 2550, atk: 2570, def: 2450, spd: 2530, int: 2470 }
    boosts_on_stats: { hlt: 10, psy: 10, atk: 10, def: 10, spd: 10, int: 10 }
    types: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] }
    skills: []
  }

  asura: {
    id: 'asura'
    name: 'Asura'
    max_stats: { hlt: 2820, psy: 2430, atk: 2500, def: 2550, spd: 2350, int: 2450 }
    boosts_on_stats: { hlt: 10, psy: 10, atk: 10, def: 10, spd: 10, int: 10 }
    types: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] }
    skills: []
  }

  joan_of_arc: {
    id: 'joan_of_arc'
    name: 'Joan of Arc'
    max_stats: { hlt: 2800, psy: 2400, atk: 3000, def: 2550, spd: 2500, int: 2400 }
    boosts_on_stats: { hlt: 10, psy: 10, atk: 10, def: 10, spd: 10, int: 10 }
    types: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] }
    skills: []
  }

  moby_dick: {
    id: 'moby_dick'
    name: 'Moby Dick'
    max_stats: { hlt: 2420, psy: 2240, atk: 2300, def: 2320, spd: 2400, int: 3000 }
    boosts_on_stats: { hlt: 10, psy: 10, atk: 10, def: 10, spd: 10, int: 10 }
    types: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] }
    skills: []
  }
}
