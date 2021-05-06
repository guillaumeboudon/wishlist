require "cuba"
require "cuba/contrib"
require "ohm"
require "mote"

require_relative "env"
Dir["./models/**/*.rb"].sort.each { |f| require(f) }

Ohm.redis = Redic.new(ENV["REDIS_URL"])

Cuba.plugin Cuba::Mote

Cuba.define do
  on root do
    render("home", title: "Home")
  end

  on default do
    res.status = 404
    render("404", title: "Page not found")
    halt(res.finish)
  end
end
