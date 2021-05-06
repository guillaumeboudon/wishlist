require "cuba"

Cuba.define do
  on root do
    res.write "Hello"
  end
end

run Cuba
