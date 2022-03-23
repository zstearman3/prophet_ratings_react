# frozen_string_literal: true

STATES_FILE = Rails.root.join('db', 'seeds', 'states.yml')
CONFERENCES_FILE = Rails.root.join('db', 'seeds', 'conferences.yml')
TEAMS_FILE = Rails.root.join('db', 'seeds', 'teams.yml')

# rubocop:disable Metrics/MethodLength
def get_team_hash(team, states, conferences)
  { school: team['school'],
    nickname: team['nickname'],
    abbreviation: team['abbreviation'],
    primary_color: team['primary_color'],
    secondary_color: team['secondary_color'],
    city: team['city'],
    state_id: states[team['state']],
    conference_id: conferences[team['conference']],
    espn_url: team['espn_url'],
    espn_id: team['espn_id'] }
end

def create_seasons
  Season.upsert_all(
    [
      { year: '2020', start_date: '2019-11-05', end_date: '2020-04-06', postseason_start_date: '2020-03-16' },
      { year: '2021', start_date: '2020-11-25', end_date: '2021-04-05', postseason_start_date: '2021-03-17' },
      { year: '2022', start_date: '2021-11-09', end_date: '2022-04-04', postseason_start_date: '2022-03-14' }
    ],
    unique_by: :year
  )
  puts "There are #{Season.count} seasons in the database."
end

def create_class_designations
  class_designations = [
    %w[freshman FR],
    %w[sophomore SO],
    %w[junior JR],
    %w[senior SR]
  ]

  class_designations.each do |cd|
    designation = ClassDesignation.find_or_initialize_by(abbreviation: cd[1])
    designation.name = cd[0]
    designation.save
  end
  puts "There are #{ClassDesignation.count} class designations in the database."
end

def create_positions
  positions = [
    %w[guard G],
    %w[forward F],
    %w[center C],
    ['wing', 'G/F'],
    ['big', 'F/C']
  ]

  positions.each do |position|
    new_position = Position.find_or_initialize_by(abbreviation: position[1])
    new_position.name = position[0]
    new_position.save
  end
  puts "There are #{Position.count} positions in the database."
end

def create_states(file)
  states = YAML.load_file(file)

  states.each do |state|
    State.find_or_create_by(state)
  end
  puts "There are #{State.count} states in the database."
end

def create_conferences(file)
  conferences = YAML.load_file(file)

  conferences.each do |conference|
    Conference.find_or_create_by(conference)
  end
  puts "There are #{Conference.count} conferences in the database."
end

def create_teams(file)
  teams = YAML.load_file(file)
  states = State.all.to_h { |state| [state.abbreviation, state.id] }
  conferences = Conference.all.to_h { |con| [con.abbreviation, con.id] }

  Team.upsert_all(
    teams.each.map do |team|
      get_team_hash(team, states, conferences)
    end, unique_by: [:school]
  )

  puts "There are #{Team.count} teams in the database."
end
# rubocop:enable Metrics/MethodLength

create_seasons
create_class_designations
create_positions
create_states(STATES_FILE)
create_conferences(CONFERENCES_FILE)
create_teams(TEAMS_FILE)
