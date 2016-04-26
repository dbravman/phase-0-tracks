###What are some common HTTP status codes?
* 1xx Informational
* 2xx Success
 * 200 OK
* 3xx Redirection
 * 300 Multiple Choices
 * 301 Moved Permanently
 * 302 Found
 * 304 Not Modified
 * 307 Temporary Redirect
* 4xx Client error
 * 400 Bad Request
 * 401 Unauthorized
 * 403 Forbidden
 * 404 Not Found
 * 410 Gone
* 5xx Server error
 * 500 Internal Server Error
 * 501 Not Implemented
 * 503 Service Unavailable
 * 550 Permission denied

###What is the difference between a GET request and a POST request? When might each be used?
* GET requests data from a specified resource.  The key/values are sent in the URL.
 * GET requests can be cached
 * GET requests remain in the browser history
 * GET requests can be bookmarked
 * GET requests should never be used when dealing with sensitive  data
 * GET requests have length restrictions
 * GET requests should be used only to retrieve data

* POST submits data to be processed to a specified resource.  The key/values are sent in the HTTP message body.
 * POST requests are never cached
 * POST requests do not remain in the browser history
 * POST requests cannot be bookmarked
 * POST requests have no restrictions on data length

###Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
