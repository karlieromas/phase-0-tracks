1. What are some common HTTP status codes?
  - 200 : most common and is a response saying that everything is good
  - 404 : not found. most common error code you run. It means that the requested resource is no longer available or just not found.
  - 403 : forbidden. access to the resouce is forbidden.
  - 504 : one of the top error codes. Indicates that there is a gateway timeout. A proxy server needs to communicate with a secondary web server and access to it has timed out.
  - 500 : this is a server-side error code. When none of the other 500 error codes make sense a 500 status code is returned. Sometimes, if you try again, you will get a different code.

2. What is the difference between a GET request and a POST request? When might each be used?
  - a POST request supplies additional data from the client to the server in the message body. a GET request includes all of the required data in the URL. The method that is specified determines how form data is submitted to the server. You should not use a GET request when requesting sensitive information (ex, SSN, cc #, personal info) because it stores as history on the client since it is in the URL. You should use a POST in this instance. A POST cannot be bookmarked.

3. What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
  - An HTTP cookie (web cookie, browser cookie) is a small piece of data that a server sends to the user's web browser. The browser may store it and send it back with the next request to the same server. Typically, it's used to tell if two requests came from the same browser — keeping a user logged-in, for example. It remembers stateful information for the stateless HTTP protocol. Cookies are used mainly for session management, personalization, or tracking.