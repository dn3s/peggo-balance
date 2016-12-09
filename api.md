API Docs
================================================================================

This is an extremely unofficial documentation of what I've managed to reverse
engineer from the official Peggo website (not much because I haven't needed
much)

Authentication
--------------------------------------------------------------------------------

`POST` `https://efare.winnipegtransit.com/e-Fare/doLogin.html`

- Params:
	- `returnUrl`: `""`
	- `userId`: (username)
	- `password`: (password)
- Response
	- code `200` if authentication failed (incorrect info, or locked
	  account (BTW, if your account is locked, it'll unlock after a 30-60min
	  timeout))
	- code `302` on successful authentication
		- server sets cookie `JSESSIONID`; use this to authenticate any
		  future requests.

Endpoints
--------------------------------------------------------------------------------

`GET` `https://efare.winnipegtransit.com/e-Fare/service/v1/cards/`

- Returns a JSON object with all your cards and all their products. (TODO:
  document)
