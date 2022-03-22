# frozen_string_literal: true

def conn
  ActiveRecord::Base.connection
end

def execute(sql)
  conn.execute sql
end

def select_all(arel)
  conn.select_all arel
end
