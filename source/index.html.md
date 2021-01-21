---
title: P34 v2.0.0
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

<!-- Generator: Widdershins v4.0.1 -->

<h1 id="p34">P34 v2.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

This API contain directory listing of residents and companies in Denmark.

You can only access this API with a username and password. To acquire that please fill out your contact information on the public website.

### Conventions
  * Basic authentication
  * Only understands HTTPS
  * Only understands JSON

### Changelog
  * **2021-01-21**: Published documentation

### Endpoints

Base URLs:

* <a href="https://rest.p34.dk">https://rest.p34.dk</a>

# Authentication

- HTTP Authentication, scheme: basic 

<h1 id="p34-phone">phone</h1>

## Find by phone number

<a id="opIdgetPhoneById"></a>

> Code samples

```shell
curl --request GET \
  --url https://rest.p34.dk/v2/dk/phone/0 \
  --header 'Accept: application/json' \
  --header 'Authorization: Basic {access-token}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, [
  CURLOPT_URL => "https://rest.p34.dk/v2/dk/phone/0",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_HTTPHEADER => [
    "Accept: application/json",
    "Authorization: Basic {access-token}"
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

url = "https://rest.p34.dk/v2/dk/phone/0"

headers = {
    'Accept': "application/json",
    'Authorization': "Basic {access-token}"
    }

response = requests.request("GET", url, headers=headers)

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

	url := "https://rest.p34.dk/v2/dk/phone/0"

	req, _ := http.NewRequest("GET", url, nil)

	req.Header.Add("Accept", "application/json")
	req.Header.Add("Authorization", "Basic {access-token}")

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

xhr.open("GET", "https://rest.p34.dk/v2/dk/phone/0");
xhr.setRequestHeader("Accept", "application/json");
xhr.setRequestHeader("Authorization", "Basic {access-token}");

xhr.send(data);
```

```csharp
var client = new RestClient("https://rest.p34.dk/v2/dk/phone/0");
var request = new RestRequest(Method.GET);
request.AddHeader("Accept", "application/json");
request.AddHeader("Authorization", "Basic {access-token}");
IRestResponse response = client.Execute(request);
```

```ruby
require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://rest.p34.dk/v2/dk/phone/0")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["Accept"] = 'application/json'
request["Authorization"] = 'Basic {access-token}'

response = http.request(request)
puts response.read_body
```

`GET /v2/dk/phone/{phone}`

Returns a single directory listing

<h3 id="find-by-phone-number-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|phone|path|integer(int64)|true|Phone number|

> Example responses

> 200 Response

```json
{
  "phone": 0,
  "address": {
    "street": "string",
    "streetcode": 0,
    "numberfrom": "string",
    "numberto": "string",
    "letterfrom": "string",
    "letterto": "string",
    "floor": "string",
    "door": "string",
    "zipcode": 0,
    "cityname": "string",
    "altcityname": "string",
    "countrycode": "string",
    "coname": "string",
    "freetext": "string",
    "municipalitycode": 0,
    "municipalityname": "string",
    "mailbox": "string",
    "kvh": "string",
    "kvhx": "string",
    "longitude": 0,
    "latitude": 0
  },
  "contact": {
    "range": {
      "start": 0,
      "end": 0
    }
  },
  "life": {
    "name": "string",
    "firstname": "string",
    "middlename": "string",
    "lastname": "string",
    "position": "string",
    "gender": "string",
    "deceased": true
  },
  "company": {
    "name": "string",
    "legal_name": "string",
    "vat": "string"
  },
  "prepaid": true,
  "telcom": "string"
}
```

<h3 id="find-by-phone-number-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Successful directory listing|[Phone](#schemaphone)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Authentication information is missing or invalid|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Directory listing not found|None|

### Response Headers

|Status|Header|Type|Format|Description|
|---|---|---|---|---|
|401|WWW_Authenticate|string||none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
authentication
</aside>

# Schemas

<h2 id="tocS_Phone">Phone</h2>
<!-- backwards compatibility -->
<a id="schemaphone"></a>
<a id="schema_Phone"></a>
<a id="tocSphone"></a>
<a id="tocsphone"></a>

```json
{
  "phone": 0,
  "address": {
    "street": "string",
    "streetcode": 0,
    "numberfrom": "string",
    "numberto": "string",
    "letterfrom": "string",
    "letterto": "string",
    "floor": "string",
    "door": "string",
    "zipcode": 0,
    "cityname": "string",
    "altcityname": "string",
    "countrycode": "string",
    "coname": "string",
    "freetext": "string",
    "municipalitycode": 0,
    "municipalityname": "string",
    "mailbox": "string",
    "kvh": "string",
    "kvhx": "string",
    "longitude": 0,
    "latitude": 0
  },
  "contact": {
    "range": {
      "start": 0,
      "end": 0
    }
  },
  "life": {
    "name": "string",
    "firstname": "string",
    "middlename": "string",
    "lastname": "string",
    "position": "string",
    "gender": "string",
    "deceased": true
  },
  "company": {
    "name": "string",
    "legal_name": "string",
    "vat": "string"
  },
  "prepaid": true,
  "telcom": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|phone|integer(int64)|false|none|Phone number|
|address|[Address](#schemaaddress)|false|none|none|
|contact|[Contact](#schemacontact)|false|none|none|
|life|[Life](#schemalife)|false|none|none|
|company|[Company](#schemacompany)|false|none|none|
|prepaid|boolean|false|none|Is subscription prepaid|
|telcom|string¦null|false|none|Telephone company|

<h2 id="tocS_Address">Address</h2>
<!-- backwards compatibility -->
<a id="schemaaddress"></a>
<a id="schema_Address"></a>
<a id="tocSaddress"></a>
<a id="tocsaddress"></a>

```json
{
  "street": "string",
  "streetcode": 0,
  "numberfrom": "string",
  "numberto": "string",
  "letterfrom": "string",
  "letterto": "string",
  "floor": "string",
  "door": "string",
  "zipcode": 0,
  "cityname": "string",
  "altcityname": "string",
  "countrycode": "string",
  "coname": "string",
  "freetext": "string",
  "municipalitycode": 0,
  "municipalityname": "string",
  "mailbox": "string",
  "kvh": "string",
  "kvhx": "string",
  "longitude": 0,
  "latitude": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|street|string¦null|false|none|Street name|
|streetcode|integer(string)¦null|false|none|Unique street code|
|numberfrom|string¦null|false|none|House number from|
|numberto|string¦null|false|none|House number to|
|letterfrom|string¦null|false|none|House letter from|
|letterto|string¦null|false|none|House letter to|
|floor|string¦null|false|none|Floor in building|
|door|string¦null|false|none|Door in building|
|zipcode|integer(int64)¦null|false|none|Zipcode|
|cityname|string¦null|false|none|City|
|altcityname|string¦null|false|none|Place name|
|countrycode|string¦null|false|none|Country code|
|coname|string¦null|false|none|Care of|
|freetext|string¦null|false|none|An address written when not matched|
|municipalitycode|integer(int64)¦null|false|none|Municipality code|
|municipalityname|string¦null|false|none|Municipality name|
|mailbox|string¦null|false|none|Mailbox|
|kvh|string¦null|false|none|Danish KVH code|
|kvhx|string¦null|false|none|Danish KVHX code|
|longitude|number(float)¦null|false|none|WGS84 longitude|
|latitude|number(float)¦null|false|none|WGS84 latitude|

<h2 id="tocS_Contact">Contact</h2>
<!-- backwards compatibility -->
<a id="schemacontact"></a>
<a id="schema_Contact"></a>
<a id="tocScontact"></a>
<a id="tocscontact"></a>

```json
{
  "range": {
    "start": 0,
    "end": 0
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|range|object|false|none|none|
|» start|integer(int64)¦null|false|none|First number in number range|
|» end|integer(int64)¦null|false|none|Last number in number range|

<h2 id="tocS_Life">Life</h2>
<!-- backwards compatibility -->
<a id="schemalife"></a>
<a id="schema_Life"></a>
<a id="tocSlife"></a>
<a id="tocslife"></a>

```json
{
  "name": "string",
  "firstname": "string",
  "middlename": "string",
  "lastname": "string",
  "position": "string",
  "gender": "string",
  "deceased": true
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string¦null|false|none|Full name|
|firstname|string¦null|false|none|Firstname|
|middlename|string¦null|false|none|Middle part of name|
|lastname|string¦null|false|none|Lastname|
|position|string¦null|false|none|Position in CPR|
|gender|string¦null|false|none|Gender|
|deceased|boolean|false|none|Deceased in CPR|

<h2 id="tocS_Company">Company</h2>
<!-- backwards compatibility -->
<a id="schemacompany"></a>
<a id="schema_Company"></a>
<a id="tocScompany"></a>
<a id="tocscompany"></a>

```json
{
  "name": "string",
  "legal_name": "string",
  "vat": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string¦null|false|none|Name|
|legal_name|string¦null|false|none|Full legal name|
|vat|string¦null|false|none|VAT|

