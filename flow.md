The Flow
================================================================================

Login
--------------------------------------------------------------------------------

### Request

POST request to `https://efare.winnipegtransit.com/e-Fare/doLogin.html`

- Params:
	- `returnUrl`: `""`
	- `userId`: (username)
	- `password`: (password)

### Response

####On Success:

- 302 (TODO verify)
- server sets cookie `JSESSIONID`.

####On Failure:

- 200 OK
- In the HTML Body, `.error-alert-block > ul > li` contains the error message

Get Data
--------------------------------------------------------------------------------

### Request

GET request to `https://efare.winnipegtransit.com/e-Fare/service/v1/cards/`

- Cookie: `JSESSIONID` from step 1
