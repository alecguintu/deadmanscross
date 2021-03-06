stats_list  = [ 'hlt', 'psy', 'atk', 'def', 'spd', 'int' ]
color_types = { awesome: '#5bc0de', best: '#5cb85c', decent: '#333', bad: '#d9534f' }

types = {
  average: { id: 'average', stats: { hlt: 0,  psy: 0,  atk: 0,  def: 0,  spd: 0,  int: 0  } }
  strong:  { id: 'strong',  stats: { hlt: 0,  psy: 0,  atk: 10, def: 0,  spd: 0,  int: -5 } }
  quick:   { id: 'quick',   stats: { hlt: -5, psy: 0,  atk: 0,  def: 0,  spd: 10, int: 0  } }
  mental:  { id: 'mental',  stats: { hlt: 0,  psy: 10, atk: -5, def: 0,  spd: 0,  int: 0  } }
  fresh:   { id: 'fresh',   stats: { hlt: 10, psy: 0,  atk: 0,  def: 0,  spd: -5, int: 0  } }
  tough:   { id: 'tough',   stats: { hlt: 0,  psy: -5, atk: 0,  def: 10, spd: 0,  int: 0  } }
  smart:   { id: 'smart',   stats: { hlt: 0,  psy: 0,  atk: 0,  def: -5, spd: 0,  int: 10 } }
  perfect: { id: 'perfect', stats: { hlt: 10, psy: 10, atk: 10, def: 10, spd: 10, int: 10 } }
}

elements = {
  physical: {
    critical: []
    blocked: []
  }
  burner: {
    critical: ['spitter', 'leecher']
    blocked: ['burner', 'chiller', 'charmer']
  }
  chiller: {
    critical: ['burner', 'leecher']
    blocked: ['chiller', 'shocker', 'spitter']
  }
  slasher: {
    critical: ['shocker', 'spitter']
    blocked: ['slasher', 'screamer', 'leecher']
  }
  shocker: {
    critical: ['chiller', 'leecher']
    blocked: ['slasher', 'shocker', 'screamer']
  }
  screamer: {
    critical: ['slasher', 'shocker']
    blocked: ['burner', 'screamer', 'charmer']
  }
  spitter: {
    critical: ['burner', 'chiller']
    blocked: ['slasher', 'spitter', 'charmer']
  }
  charmer: {
    critical: ['screamer', 'spitter']
    blocked: ['burner', 'charmer', 'leecher']
  }
  leecher: {
    critical: ['slasher', 'charmer']
    blocked: ['chiller', 'shocker', 'leecher']
  }
}

deadmen_5 = {
  abraham_lincoln: {
    id: 'abraham_lincoln'
    name: 'Abraham Lincoln'
    max_stats: { hlt: 2570, psy: 2570, atk: 2430, def: 2220, spd: 2490, int: 2650 }
    type_ranks: { awesome: ['perfect'], best: ['smart', 'quick'], decent: ['tough', 'average'], bad: ['fresh', 'strong'] }
    skills: {
      learned: {'burner +2', 'atk -20', 'int +20', 'burner +3', 'burner +4' }
      preferred: {'atk -20', 'int +20', 'burner +4'}
    }
  }

  attack_helicopter: {
    id: 'attack_helicopter'
    name: 'Attack Helicopter'
    max_stats: { hlt: 2550, psy: 2300, atk: 2400, def: 2310, spd: 2570, int: 2450 }
    type_ranks: { awesome: ['perfect'], best: ['strong', 'quick'], decent: ['smart', 'tough', 'average'], bad: ['mental'] }
    skills: []
  }

  satan: {
    id: 'satan'
    name: 'Satan'
    max_stats: { hlt: 2200, psy: 2800, atk: 2480, def: 2520, spd: 2490, int: 2590 }
    type_ranks: { awesome: ['perfect'], best: ['smart', 'quick'], decent: ['mental', 'average'], bad: ['strong', 'tough'] }
    skills: []
  }

  marie_antoinette: {
    id: 'marie_antoinette'
    name: 'Marie Antoinette'
    max_stats: { hlt: 2425, psy: 2550, atk: 2570, def: 2450, spd: 2530, int: 2470 }
    type_ranks: { awesome: ['perfect'], best: ['quick', 'smart', 'strong'], decent: ['average', 'tough'], bad: ['fresh'] }
    skills: []
  }

  asura: {
    id: 'asura'
    name: 'Asura'
    max_stats: { hlt: 2820, psy: 2430, atk: 2500, def: 2550, spd: 2350, int: 2450 }
    type_ranks: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }

  joan_of_arc: {
    id: 'joan_of_arc'
    name: 'Joan of Arc'
    max_stats: { hlt: 2800, psy: 2400, atk: 3000, def: 2550, spd: 2500, int: 2400 }
    type_ranks: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }

  moby_dick: {
    id: 'moby_dick'
    name: 'Moby Dick'
    max_stats: { hlt: 2420, psy: 2240, atk: 2300, def: 2320, spd: 2400, int: 3000 }
    type_ranks: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }


  napoleon_bonaparte: {
    id: 'napoleon_bonaparte'
    name: 'Napoleon Bonaparte'
    max_stats: { hlt: 2590, psy: 2550, atk: 2560, def: 2550, spd: 2430, int: 2490 }
    type_ranks: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }

  pluto: {
    id: 'pluto'
    name: 'Pluto'
    max_stats: { hlt: 2440, psy: 2350, atk: 2680, def: 2800, spd: 2510, int: 2440 }
    type_ranks: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }

  yang_guifei: {
    id: 'yang_guifei'
    name: 'Yang Guifei'
    max_stats: { hlt: 2550, psy: 2740, atk: 2140, def: 2470, spd: 2770, int: 2550 }
    type_ranks: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }

  titan: {
    id: 'titan'
    name: 'Titan'
    max_stats: { hlt: 2700, psy: 2560, atk: 2820, def: 2680, spd: 2150, int: 2300 }
    type_ranks: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }

  peregrine_falcon: {
    id: 'peregrine_falcon'
    name: 'Peregrine Falcon'
    max_stats: { hlt: 2600, psy: 2310, atk: 2600, def: 2450, spd: 2550, int: 2200 }
    type_ranks: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }


  abhorrent_airship: {
    id: 'abhorrent_airship'
    name: 'Abhorrent Airship'
    max_stats: { hlt: 2775, psy: 2390, atk: 2600, def: 2480, spd: 2445, int: 2560 }
    type_ranks: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }

  genie_in_a_lamp: {
    id: 'genie_in_a_lamp'
    name: 'Genie in a Lamp'
    max_stats: { hlt: 2595, psy: 2525, atk: 2500, def: 2500, spd: 2560, int: 2498 }
    type_ranks: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }

  mars: {
    id: 'mars'
    name: 'Mars'
    max_stats: { hlt: 2680, psy: 2680, atk: 2800, def: 2470, spd: 2130, int: 2500 }
    type_ranks: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }

  rubeus: {
    id: 'rubeus'
    name: 'Rubeus'
    max_stats: { hlt: 2443, psy: 2375, atk: 2480, def: 2518, spd: 2670, int: 2438 }
    type_ranks: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }

  isaac_newton: {
    id: 'isaac_newton'
    name: 'Isaac Newton'
    max_stats: { hlt: 2330, psy: 2550, atk: 2765, def: 2225, spd: 2530, int: 2830 }
    type_ranks: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }

  cleopatra: {
    id: 'cleopatra'
    name: 'Cleopatra'
    max_stats: { hlt: 2550, psy: 2580, atk: 2420, def: 2480, spd: 2450, int: 2400 }
    type_ranks: { awesome: ['perfect'], best: [''], decent: [''], bad: [''] },
    skills: []
  }
}
