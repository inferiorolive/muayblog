class JadeController < ApplicationController
  # GET /jade
  def awesome
    # plain‑text response (Content‑Type: text/plain)
    render plain: "boss you are awesome"
  end
end
