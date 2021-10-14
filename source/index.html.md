---
title: Txty SMS v6.0.0
language_tabs:
  - shell: cURL
  - php: PHP
  - python: Python
  - go: Go
  - javascript: JavaScript
  - csharp: C#
  - ruby: Ruby
language_clients:
  - shell: ""
  - php: cURL
  - python: requests
  - go: ""
  - javascript: ""
  - csharp: ""
  - ruby: ""
toc_footers: []
includes: []
search: false
highlight_theme: darkula
headingLevel: 2

---

<h1 id="txty-sms">Txty SMS v6.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

You can only access this API with a username and token. To acquire that please fill out your contact information on the public website.

This API is only for paying customers.

### Conventions
  * Basic authentication
  * Only understands HTTPS
  * Only understands JSON

### Changelog
  * **2021-10-14**: Published documentation

### Endpoints

Base URLs:

* <a href="https://sms.cloudsms.dk">https://sms.cloudsms.dk</a>

# Authentication

* API Key (username)
    - Parameter Name: **username**, in: query. 

* API Key (token)
    - Parameter Name: **token**, in: query. 

<h1 id="txty-sms-sms">SMS</h1>

## Send a single SMS

<a id="opIdsms"></a>

> Code samples

```shell
curl --request GET \
  --url 'https://sms.cloudsms.dk/v6/sms?msisdn=0&sender=string&text=string' \
  --header 'Accept: application/json'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, [
  CURLOPT_URL => "https://sms.cloudsms.dk/v6/sms?msisdn=0&sender=string&text=string",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_HTTPHEADER => [
    "Accept: application/json"
  ],
]);

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
  echo $response;
}
```

```python
import requests

url = "https://sms.cloudsms.dk/v6/sms"

querystring = {"msisdn":"0","sender":"string","text":"string"}

headers = {"Accept": "application/json"}

response = requests.request("GET", url, headers=headers, params=querystring)

print(response.text)
```

```go
package main

import (
	"fmt"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://sms.cloudsms.dk/v6/sms?msisdn=0&sender=string&text=string"

	req, _ := http.NewRequest("GET", url, nil)

	req.Header.Add("Accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

```javascript
const data = null;

const xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("GET", "https://sms.cloudsms.dk/v6/sms?msisdn=0&sender=string&text=string");
xhr.setRequestHeader("Accept", "application/json");

xhr.send(data);
```

```csharp
var client = new RestClient("https://sms.cloudsms.dk/v6/sms?msisdn=0&sender=string&text=string");
var request = new RestRequest(Method.GET);
request.AddHeader("Accept", "application/json");
IRestResponse response = client.Execute(request);
```

```ruby
require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://sms.cloudsms.dk/v6/sms?msisdn=0&sender=string&text=string")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["Accept"] = 'application/json'

response = http.request(request)
puts response.read_body
```

`GET /v6/sms`

Send a single SMS and return the SMS object

<h3 id="send-a-single-sms-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|msisdn|query|integer(int64)|true|Recipient number with dialcode|
|sender|query|string|true|Sender number|
|text|query|string|true|Message content|
|settings_premium|query|boolean|false|Sets premium|
|settings_flash|query|boolean|false|Sets flash|
|settings_silent|query|boolean|false|Sets silent|
|settings_scheduled|query|string(date-time)|false|Sets scheduled to|
|custom_reference|query|string|false|Custom reference|

<h3 id="send-a-single-sms-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Result|[SMS](#schemasms)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Error](#schemaerror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Authentication information is missing or invalid|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|[Error](#schemaerror)|
|501|[Not Implemented](https://tools.ietf.org/html/rfc7231#section-6.6.2)|Internal Server Error|[Error](#schemaerror)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
username & token
</aside>

# Schemas

<h2 id="tocS_SMS">SMS</h2>
<!-- backwards compatibility -->
<a id="schemasms"></a>
<a id="schema_SMS"></a>
<a id="tocSsms"></a>
<a id="tocssms"></a>

```json
{
  "guid": "string",
  "recipient": [
    {
      "msisdn": 0,
      "dialcode": 0,
      "number": 0
    }
  ],
  "message": [
    {
      "sender": "string",
      "price": 0,
      "characters": 0,
      "message_count": 0,
      "text": "string",
      "reference": "string"
    }
  ],
  "settings": [
    {
      "premium": true,
      "flash": true,
      "silent": true,
      "scheduled_to": "2019-08-24T14:15:22Z"
    }
  ]
}

```

### Properties

|Name|Type|Description|
|---|---|---|---|---|
|guid|string|Our unique id|
|recipient|[object]¦null|none|
|» msisdn|integer(int64)|Mobile subscriber number|
|» dialcode|integer(int64)|Country code|
|» number|integer(int64)|Number|
|message|[object]¦null|none|
|» sender|string|Sender number|
|» price|number(float)|The price you have paid to send this message|
|» characters|integer(int64)|The total sum of characters used in the text|
|» message_count|integer(int64)|The total sum of messages|
|» text|string|The message content|
|» reference|string|A custom reference you can define to identify messages in your own system|
|settings|[object]¦null|none|
|» premium|boolean|If this message billed the user for the message (only available for specific customers)|
|» flash|boolean|If this message will show as a flash on the recipients phone|
|» silent|boolean|If this message is silent|
|» scheduled_to|string(date-time)|If this message is scheduled for later delivery|

<h2 id="tocS_Error">Error</h2>
<!-- backwards compatibility -->
<a id="schemaerror"></a>
<a id="schema_Error"></a>
<a id="tocSerror"></a>
<a id="tocserror"></a>

```json
{
  "error": "BAD_REQUEST",
  "message": "string"
}

```

### Properties

|Name|Type|Description|
|---|---|---|---|---|
|error|string|Error code|
|message|string|Message that gives more information on the error|

#### Enumerated Values

|Property|Value|
|---|---|
|error|BAD_REQUEST|
|error|INTERNAL_ERROR|
|error|METHOD_NOT_IMPLEMENTED|
|error|MSISDN_EMPTY|
|error|MSISDN_INVALID|
|error|MSISDN_LONG|
|error|MSISDN_ALPHA|
|error|SENDER_EMPTY|
|error|SENDER_INVALID|
|error|SENDER_LONG|
|error|SENDER_LONG|
|error|TEXT_EMPTY|
|error|TEXT_LONG|
|error|SCHEDULED_INVALID|
|error|SCHEDULED_INVALID|
|error|REFERENCE_LONG|
|error|CANNOT_AFFORD|
|error|INTERNAL_ERROR|
|error|INTERNAL_ERROR|

