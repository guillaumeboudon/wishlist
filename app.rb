require "cuba"
require "cuba/contrib"
require "mote"

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
