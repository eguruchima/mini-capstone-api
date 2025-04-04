# Rails.application.config.middleware.insert_before 0, Rack::Cors do
#   allow do
#     origins "mini-capstone.peterxjang.com", "localhost:517"
#     resource "*", headers: :any, credentials: true, methods: [ :get, :post, :patch, :put, :delete ]
#   end
# end

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "http://mini-capstone.peterxjang.com", "http://localhost:5173"

    resource "*",
      headers: :any,
      credentials: true,
      methods: [ :get, :post, :patch, :put, :delete, :options ]
  end
end
