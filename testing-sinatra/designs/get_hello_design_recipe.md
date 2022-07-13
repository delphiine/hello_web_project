# GET /names Route Design Recipe.

## 1. Design the Route Signature

You'll need to include:
  * the HTTP method: GET
  * the path: /hello
  * any query parameters (passed in the URL) n/a
  * or body parameters (passed in the request body) n/a

## 2. Design the Response

The route might return different responses, depending on the result.

For example, a route for a specific blog post (by its ID) might return `200 OK` if the post exists, but `404 Not Found` if the post is not found in the database.

Your response might return plain text, JSON, or HTML code. 

_Replace the below with your own design. Think of all the different possible responses your route will return._


<html>
  <head></head>
  <body>
    <h1>Hello!</h1>
  </body>
</html>

## 3. Write Examples

_Replace these with your own design._

```
# Request:

GET /hello

# Expected response:

`Hello!`
```

```
# Request:

GET /hello

# Expected response:

Status 200 OK
```

## 4. Encode as Tests Examples

```ruby
# EXAMPLE
# file: spec/integration/application_spec.rb

require "spec_helper"

describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

  context "GET /hello" do
    it "returns 'Hello!'" do
      # Assuming the post with id 1 exists.
      response = get('/hello')

      expect(response.status).to eq(200)

      expect(response.body).to include("Hello!")
    end
  end
end
```

## 5. Implement the Route

Write the route and web server code to implement the route behaviour.