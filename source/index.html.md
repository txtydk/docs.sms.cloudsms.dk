---
title: CVR API v2.0.0
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

<h1 id="cvr-api">CVR API v2.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

You can only access this API with a username and password. To acquire that please fill out your contact information on the public website.

This API is only for paying customers.

### Conventions
  * Basic authentication
  * Only understands HTTPS
  * Only understands JSON

### Changelog
  * **2021-04-27**: Updated changed feed
  * **2021-04-15**: Added participant attributes
  * **2021-02-01**: Published documentation

### Endpoints

Base URLs:

* <a href="https://rest.cvrapi.dk">https://rest.cvrapi.dk</a>

# Authentication

- HTTP Authentication, scheme: basic The provided token is the username and password is empty.

<h1 id="cvr-api-company">Company</h1>

## Find by VAT

<a id="opIdgetCompanyById"></a>

> Code samples

```shell
curl --request GET \
  --url https://rest.cvrapi.dk/v2/dk/company/0 \
  --header 'Accept: application/json' \
  --header 'Authorization: Basic {access-token}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, [
  CURLOPT_URL => "https://rest.cvrapi.dk/v2/dk/company/0",
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

url = "https://rest.cvrapi.dk/v2/dk/company/0"

headers = {
    "Accept": "application/json",
    "Authorization": "Basic {access-token}"
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

	url := "https://rest.cvrapi.dk/v2/dk/company/0"

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

xhr.open("GET", "https://rest.cvrapi.dk/v2/dk/company/0");
xhr.setRequestHeader("Accept", "application/json");
xhr.setRequestHeader("Authorization", "Basic {access-token}");

xhr.send(data);
```

```csharp
var client = new RestClient("https://rest.cvrapi.dk/v2/dk/company/0");
var request = new RestRequest(Method.GET);
request.AddHeader("Accept", "application/json");
request.AddHeader("Authorization", "Basic {access-token}");
IRestResponse response = client.Execute(request);
```

```ruby
require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://rest.cvrapi.dk/v2/dk/company/0")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["Accept"] = 'application/json'
request["Authorization"] = 'Basic {access-token}'

response = http.request(request)
puts response.read_body
```

`GET /v2/{country}/company/{vat}`

Returns a single company

<h3 id="find-by-vat-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|country|path|string|true|Country|
|vat|path|integer(int64)|true|VAT|

#### Enumerated Values

|Parameter|Value|
|---|---|
|country|dk|
|country|no|

<h3 id="find-by-vat-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Result|[Company](#schemacompany)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Error](#schemaerror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Authentication information is missing or invalid|None|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[Error](#schemaerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not found|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|[Error](#schemaerror)|
|501|[Not Implemented](https://tools.ietf.org/html/rfc7231#section-6.6.2)|Internal Server Error|[Error](#schemaerror)|

### Response Headers

|Status|Header|Type|Format|Description|
|---|---|---|---|---|
|200|Access-Control-Allow-Origin|string||Origin allowed|
|200|Access-Control-Allow-Methods|string||Origin method allowed|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
authentication
</aside>

## Search in companies

<a id="opIdsearchCompany"></a>

> Code samples

```shell
curl --request GET \
  --url https://rest.cvrapi.dk/v2/dk/search/company \
  --header 'Accept: application/json' \
  --header 'Authorization: Basic {access-token}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, [
  CURLOPT_URL => "https://rest.cvrapi.dk/v2/dk/search/company",
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

url = "https://rest.cvrapi.dk/v2/dk/search/company"

headers = {
    "Accept": "application/json",
    "Authorization": "Basic {access-token}"
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

	url := "https://rest.cvrapi.dk/v2/dk/search/company"

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

xhr.open("GET", "https://rest.cvrapi.dk/v2/dk/search/company");
xhr.setRequestHeader("Accept", "application/json");
xhr.setRequestHeader("Authorization", "Basic {access-token}");

xhr.send(data);
```

```csharp
var client = new RestClient("https://rest.cvrapi.dk/v2/dk/search/company");
var request = new RestRequest(Method.GET);
request.AddHeader("Accept", "application/json");
request.AddHeader("Authorization", "Basic {access-token}");
IRestResponse response = client.Execute(request);
```

```ruby
require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://rest.cvrapi.dk/v2/dk/search/company")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["Accept"] = 'application/json'
request["Authorization"] = 'Basic {access-token}'

response = http.request(request)
puts response.read_body
```

`GET /v2/{country}/search/company`

Returns a list of companies

<h3 id="search-in-companies-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|country|path|string|true|Country|
|life_name|query|string|false|none|
|life_start|query|string(date)|false|none|
|life_end|query|string(date)|false|none|
|life_adprotected|query|boolean|false|none|
|address_street|query|string|false|none|
|address_streetcode|query|integer(int64)|false|none|
|address_numberfrom|query|string|false|none|
|address_letterfrom|query|string|false|none|
|address_zipcode|query|integer(int64)|false|none|
|address_zipcode_list|query|string|false|none|
|address_city|query|string|false|none|
|address_municipality|query|integer(int64)|false|none|
|companyform_code|query|integer(int64)|false|none|
|companyform_description|query|string|false|none|
|companyform_holding|query|boolean|false|none|
|companystatus_code|query|integer(int64)|false|none|
|contact_phone|query|string|false|none|
|contact_email|query|string|false|none|
|contact_www|query|string|false|none|
|status_bankrupt|query|boolean|false|none|
|industry_primary_text|query|string|false|none|
|industry_primary_code|query|integer(int64)|false|none|
|industry_secondary_text|query|string|false|none|
|industry_secondary_code|query|integer(int64)|false|none|
|capital_capital|query|string|false|none|
|capital_currency|query|string|false|none|
|capital_ipo|query|boolean|false|none|
|employment_amount|query|string|false|none|
|employment_interval_low|query|string|false|none|
|info_ean_id|query|string|false|none|
|info_lei_id|query|string|false|none|

#### Detailed descriptions

**companystatus_code**: 
`3` - OPLØST

`4` - OPLØST EFTER ERKLÆRING

`5` - OPLØST EFTER FRIVILLIG LIKVIDATION

`6` - OPLØST EFTER FUSION

`7` - OPLØST EFTER KONKURS

`8` - OPLØST EFTER SPALTNING

`10` - SLETTET

`11` - TVANGSOPLØST

`12` - UDEN RETSVIRKNING

`13` - UNDER FRIVILLIG LIKVIDATION

`14` - UNDER KONKURS

`15` - UNDER REASSUMERING

`17` - UNDER REKONSTRUKTION

`18` - UNDER TVANGSOPLØSNING

`19` - OPHØRT

`20` - I DRIFT

`21` - OPLØST EFTER GRÆNSEOVERSKRIDENDE HJEMSTEDSFLYTNING

`23` - OPLØST EFTER GRÆNSEOVERSKRIDENDE FUSION

`24` - LUKKET

#### Enumerated Values

|Parameter|Value|
|---|---|
|country|dk|
|country|no|
|companystatus_code|3|
|companystatus_code|4|
|companystatus_code|5|
|companystatus_code|6|
|companystatus_code|7|
|companystatus_code|8|
|companystatus_code|10|
|companystatus_code|11|
|companystatus_code|12|
|companystatus_code|13|
|companystatus_code|14|
|companystatus_code|15|
|companystatus_code|17|
|companystatus_code|18|
|companystatus_code|19|
|companystatus_code|20|
|companystatus_code|21|
|companystatus_code|23|
|companystatus_code|24|

<h3 id="search-in-companies-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Results|[Company](#schemacompany)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Error](#schemaerror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Authentication information is missing or invalid|None|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[Error](#schemaerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not found|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|[Error](#schemaerror)|
|501|[Not Implemented](https://tools.ietf.org/html/rfc7231#section-6.6.2)|Internal Server Error|[Error](#schemaerror)|

### Response Headers

|Status|Header|Type|Format|Description|
|---|---|---|---|---|
|200|Access-Control-Allow-Origin|string||Origin allowed|
|200|Access-Control-Allow-Methods|string||Origin method allowed|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
authentication
</aside>

## Suggest companies by name

<a id="opIdsuggestionsCompany"></a>

> Code samples

```shell
curl --request GET \
  --url https://rest.cvrapi.dk/v2/dk/suggestions/company/string \
  --header 'Accept: application/json' \
  --header 'Authorization: Basic {access-token}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, [
  CURLOPT_URL => "https://rest.cvrapi.dk/v2/dk/suggestions/company/string",
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

url = "https://rest.cvrapi.dk/v2/dk/suggestions/company/string"

headers = {
    "Accept": "application/json",
    "Authorization": "Basic {access-token}"
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

	url := "https://rest.cvrapi.dk/v2/dk/suggestions/company/string"

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

xhr.open("GET", "https://rest.cvrapi.dk/v2/dk/suggestions/company/string");
xhr.setRequestHeader("Accept", "application/json");
xhr.setRequestHeader("Authorization", "Basic {access-token}");

xhr.send(data);
```

```csharp
var client = new RestClient("https://rest.cvrapi.dk/v2/dk/suggestions/company/string");
var request = new RestRequest(Method.GET);
request.AddHeader("Accept", "application/json");
request.AddHeader("Authorization", "Basic {access-token}");
IRestResponse response = client.Execute(request);
```

```ruby
require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://rest.cvrapi.dk/v2/dk/suggestions/company/string")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["Accept"] = 'application/json'
request["Authorization"] = 'Basic {access-token}'

response = http.request(request)
puts response.read_body
```

`GET /v2/{country}/suggestions/company/{name}`

Returns a list of companies

<h3 id="suggest-companies-by-name-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|country|path|string|true|Country|
|name|path|string|true|Name|

#### Enumerated Values

|Parameter|Value|
|---|---|
|country|dk|
|country|no|

<h3 id="suggest-companies-by-name-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Results|[Company](#schemacompany)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Error](#schemaerror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Authentication information is missing or invalid|None|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[Error](#schemaerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not found|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|[Error](#schemaerror)|
|501|[Not Implemented](https://tools.ietf.org/html/rfc7231#section-6.6.2)|Internal Server Error|[Error](#schemaerror)|

### Response Headers

|Status|Header|Type|Format|Description|
|---|---|---|---|---|
|200|Access-Control-Allow-Origin|string||Origin allowed|
|200|Access-Control-Allow-Methods|string||Origin method allowed|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
authentication
</aside>

<h1 id="cvr-api-subsidiary">Subsidiary</h1>

## Find by subsidiarynumber

<a id="opIdgetSubsidiaryById"></a>

> Code samples

```shell
curl --request GET \
  --url https://rest.cvrapi.dk/v2/dk/subsidiary/0 \
  --header 'Accept: application/json' \
  --header 'Authorization: Basic {access-token}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, [
  CURLOPT_URL => "https://rest.cvrapi.dk/v2/dk/subsidiary/0",
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

url = "https://rest.cvrapi.dk/v2/dk/subsidiary/0"

headers = {
    "Accept": "application/json",
    "Authorization": "Basic {access-token}"
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

	url := "https://rest.cvrapi.dk/v2/dk/subsidiary/0"

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

xhr.open("GET", "https://rest.cvrapi.dk/v2/dk/subsidiary/0");
xhr.setRequestHeader("Accept", "application/json");
xhr.setRequestHeader("Authorization", "Basic {access-token}");

xhr.send(data);
```

```csharp
var client = new RestClient("https://rest.cvrapi.dk/v2/dk/subsidiary/0");
var request = new RestRequest(Method.GET);
request.AddHeader("Accept", "application/json");
request.AddHeader("Authorization", "Basic {access-token}");
IRestResponse response = client.Execute(request);
```

```ruby
require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://rest.cvrapi.dk/v2/dk/subsidiary/0")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["Accept"] = 'application/json'
request["Authorization"] = 'Basic {access-token}'

response = http.request(request)
puts response.read_body
```

`GET /v2/{country}/subsidiary/{subsidiarynumber}`

Returns a single subsidiary

<h3 id="find-by-subsidiarynumber-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|country|path|string|true|Country|
|subsidiarynumber|path|integer(int64)|true|Subsidiarynumber|

#### Enumerated Values

|Parameter|Value|
|---|---|
|country|dk|
|country|no|

<h3 id="find-by-subsidiarynumber-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Result|[Subsidiary](#schemasubsidiary)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Error](#schemaerror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Authentication information is missing or invalid|None|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[Error](#schemaerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not found|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|[Error](#schemaerror)|
|501|[Not Implemented](https://tools.ietf.org/html/rfc7231#section-6.6.2)|Internal Server Error|[Error](#schemaerror)|

### Response Headers

|Status|Header|Type|Format|Description|
|---|---|---|---|---|
|200|Access-Control-Allow-Origin|string||Origin allowed|
|200|Access-Control-Allow-Methods|string||Origin method allowed|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
authentication
</aside>

## Search in subsidiaries

<a id="opIdsearchSubsidiary"></a>

> Code samples

```shell
curl --request GET \
  --url https://rest.cvrapi.dk/v2/dk/search/subsidiary \
  --header 'Accept: application/json' \
  --header 'Authorization: Basic {access-token}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, [
  CURLOPT_URL => "https://rest.cvrapi.dk/v2/dk/search/subsidiary",
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

url = "https://rest.cvrapi.dk/v2/dk/search/subsidiary"

headers = {
    "Accept": "application/json",
    "Authorization": "Basic {access-token}"
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

	url := "https://rest.cvrapi.dk/v2/dk/search/subsidiary"

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

xhr.open("GET", "https://rest.cvrapi.dk/v2/dk/search/subsidiary");
xhr.setRequestHeader("Accept", "application/json");
xhr.setRequestHeader("Authorization", "Basic {access-token}");

xhr.send(data);
```

```csharp
var client = new RestClient("https://rest.cvrapi.dk/v2/dk/search/subsidiary");
var request = new RestRequest(Method.GET);
request.AddHeader("Accept", "application/json");
request.AddHeader("Authorization", "Basic {access-token}");
IRestResponse response = client.Execute(request);
```

```ruby
require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://rest.cvrapi.dk/v2/dk/search/subsidiary")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["Accept"] = 'application/json'
request["Authorization"] = 'Basic {access-token}'

response = http.request(request)
puts response.read_body
```

`GET /v2/{country}/search/subsidiary`

Returns a list of subsidiaries

<h3 id="search-in-subsidiaries-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|country|path|string|true|Country|
|life_name|query|string|false|none|
|life_start|query|string(date)|false|none|
|life_end|query|string(date)|false|none|
|life_adprotected|query|boolean|false|none|
|address_street|query|string|false|none|
|address_streetcode|query|integer(int64)|false|none|
|address_numberfrom|query|string|false|none|
|address_letterfrom|query|string|false|none|
|address_zipcode|query|integer(int64)|false|none|
|address_zipcode_list|query|string|false|none|
|address_city|query|string|false|none|
|address_municipality|query|integer(int64)|false|none|
|contact_phone|query|string|false|none|
|contact_email|query|string|false|none|
|contact_www|query|string|false|none|
|industry_primary_text|query|string|false|none|
|industry_primary_code|query|integer(int64)|false|none|
|industry_secondary_text|query|string|false|none|
|industry_secondary_code|query|integer(int64)|false|none|
|employment_amount|query|string|false|none|
|employment_interval_low|query|string|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|country|dk|
|country|no|

<h3 id="search-in-subsidiaries-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Results|[Subsidiary](#schemasubsidiary)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Error](#schemaerror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Authentication information is missing or invalid|None|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[Error](#schemaerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not found|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|[Error](#schemaerror)|
|501|[Not Implemented](https://tools.ietf.org/html/rfc7231#section-6.6.2)|Internal Server Error|[Error](#schemaerror)|

### Response Headers

|Status|Header|Type|Format|Description|
|---|---|---|---|---|
|200|Access-Control-Allow-Origin|string||Origin allowed|
|200|Access-Control-Allow-Methods|string||Origin method allowed|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
authentication
</aside>

## Suggest subsidiaries by name

<a id="opIdsuggestionsSubsidiary"></a>

> Code samples

```shell
curl --request GET \
  --url https://rest.cvrapi.dk/v2/dk/suggestions/subsidiary/string \
  --header 'Accept: application/json' \
  --header 'Authorization: Basic {access-token}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, [
  CURLOPT_URL => "https://rest.cvrapi.dk/v2/dk/suggestions/subsidiary/string",
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

url = "https://rest.cvrapi.dk/v2/dk/suggestions/subsidiary/string"

headers = {
    "Accept": "application/json",
    "Authorization": "Basic {access-token}"
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

	url := "https://rest.cvrapi.dk/v2/dk/suggestions/subsidiary/string"

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

xhr.open("GET", "https://rest.cvrapi.dk/v2/dk/suggestions/subsidiary/string");
xhr.setRequestHeader("Accept", "application/json");
xhr.setRequestHeader("Authorization", "Basic {access-token}");

xhr.send(data);
```

```csharp
var client = new RestClient("https://rest.cvrapi.dk/v2/dk/suggestions/subsidiary/string");
var request = new RestRequest(Method.GET);
request.AddHeader("Accept", "application/json");
request.AddHeader("Authorization", "Basic {access-token}");
IRestResponse response = client.Execute(request);
```

```ruby
require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://rest.cvrapi.dk/v2/dk/suggestions/subsidiary/string")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["Accept"] = 'application/json'
request["Authorization"] = 'Basic {access-token}'

response = http.request(request)
puts response.read_body
```

`GET /v2/{country}/suggestions/subsidiary/{name}`

Returns a list of subsidiaries

<h3 id="suggest-subsidiaries-by-name-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|country|path|string|true|Country|
|name|path|string|true|Name|

#### Enumerated Values

|Parameter|Value|
|---|---|
|country|dk|
|country|no|

<h3 id="suggest-subsidiaries-by-name-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Results|[Subsidiary](#schemasubsidiary)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Error](#schemaerror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Authentication information is missing or invalid|None|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[Error](#schemaerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not found|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|[Error](#schemaerror)|
|501|[Not Implemented](https://tools.ietf.org/html/rfc7231#section-6.6.2)|Internal Server Error|[Error](#schemaerror)|

### Response Headers

|Status|Header|Type|Format|Description|
|---|---|---|---|---|
|200|Access-Control-Allow-Origin|string||Origin allowed|
|200|Access-Control-Allow-Methods|string||Origin method allowed|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
authentication
</aside>

<h1 id="cvr-api-participant">Participant</h1>

## Find by participantnumber

<a id="opIdgetParticipantById"></a>

> Code samples

```shell
curl --request GET \
  --url https://rest.cvrapi.dk/v2/dk/participant/0 \
  --header 'Accept: application/json' \
  --header 'Authorization: Basic {access-token}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, [
  CURLOPT_URL => "https://rest.cvrapi.dk/v2/dk/participant/0",
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

url = "https://rest.cvrapi.dk/v2/dk/participant/0"

headers = {
    "Accept": "application/json",
    "Authorization": "Basic {access-token}"
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

	url := "https://rest.cvrapi.dk/v2/dk/participant/0"

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

xhr.open("GET", "https://rest.cvrapi.dk/v2/dk/participant/0");
xhr.setRequestHeader("Accept", "application/json");
xhr.setRequestHeader("Authorization", "Basic {access-token}");

xhr.send(data);
```

```csharp
var client = new RestClient("https://rest.cvrapi.dk/v2/dk/participant/0");
var request = new RestRequest(Method.GET);
request.AddHeader("Accept", "application/json");
request.AddHeader("Authorization", "Basic {access-token}");
IRestResponse response = client.Execute(request);
```

```ruby
require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://rest.cvrapi.dk/v2/dk/participant/0")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["Accept"] = 'application/json'
request["Authorization"] = 'Basic {access-token}'

response = http.request(request)
puts response.read_body
```

`GET /v2/{country}/participant/{participantnumber}`

Returns a single participant

<h3 id="find-by-participantnumber-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|country|path|string|true|Country|
|participantnumber|path|integer(int64)|true|participantnumber|

#### Enumerated Values

|Parameter|Value|
|---|---|
|country|dk|
|country|no|

<h3 id="find-by-participantnumber-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Result|[Participant](#schemaparticipant)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Error](#schemaerror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Authentication information is missing or invalid|None|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[Error](#schemaerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not found|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|[Error](#schemaerror)|
|501|[Not Implemented](https://tools.ietf.org/html/rfc7231#section-6.6.2)|Internal Server Error|[Error](#schemaerror)|

### Response Headers

|Status|Header|Type|Format|Description|
|---|---|---|---|---|
|200|Access-Control-Allow-Origin|string||Origin allowed|
|200|Access-Control-Allow-Methods|string||Origin method allowed|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
authentication
</aside>

## Search in participants

<a id="opIdsearchParticipant"></a>

> Code samples

```shell
curl --request GET \
  --url https://rest.cvrapi.dk/v2/dk/search/participant \
  --header 'Accept: application/json' \
  --header 'Authorization: Basic {access-token}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, [
  CURLOPT_URL => "https://rest.cvrapi.dk/v2/dk/search/participant",
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

url = "https://rest.cvrapi.dk/v2/dk/search/participant"

headers = {
    "Accept": "application/json",
    "Authorization": "Basic {access-token}"
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

	url := "https://rest.cvrapi.dk/v2/dk/search/participant"

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

xhr.open("GET", "https://rest.cvrapi.dk/v2/dk/search/participant");
xhr.setRequestHeader("Accept", "application/json");
xhr.setRequestHeader("Authorization", "Basic {access-token}");

xhr.send(data);
```

```csharp
var client = new RestClient("https://rest.cvrapi.dk/v2/dk/search/participant");
var request = new RestRequest(Method.GET);
request.AddHeader("Accept", "application/json");
request.AddHeader("Authorization", "Basic {access-token}");
IRestResponse response = client.Execute(request);
```

```ruby
require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://rest.cvrapi.dk/v2/dk/search/participant")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["Accept"] = 'application/json'
request["Authorization"] = 'Basic {access-token}'

response = http.request(request)
puts response.read_body
```

`GET /v2/{country}/search/participant`

Returns a list of participants

<h3 id="search-in-participants-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|country|path|string|true|Country|
|life_name|query|string|false|none|
|life_deceased|query|boolean|false|none|
|address_street|query|string|false|none|
|address_streetcode|query|integer(int64)|false|none|
|address_numberfrom|query|string|false|none|
|address_letterfrom|query|string|false|none|
|address_zipcode|query|integer(int64)|false|none|
|address_zipcode_list|query|string|false|none|
|address_city|query|string|false|none|
|address_municipality|query|integer(int64)|false|none|
|contact_phone|query|string|false|none|
|contact_email|query|string|false|none|
|contact_www|query|string|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|country|dk|
|country|no|

<h3 id="search-in-participants-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Results|[Participant](#schemaparticipant)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Error](#schemaerror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Authentication information is missing or invalid|None|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[Error](#schemaerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not found|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|[Error](#schemaerror)|
|501|[Not Implemented](https://tools.ietf.org/html/rfc7231#section-6.6.2)|Internal Server Error|[Error](#schemaerror)|

### Response Headers

|Status|Header|Type|Format|Description|
|---|---|---|---|---|
|200|Access-Control-Allow-Origin|string||Origin allowed|
|200|Access-Control-Allow-Methods|string||Origin method allowed|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
authentication
</aside>

## Suggest participants by name

<a id="opIdsuggestionsParticipant"></a>

> Code samples

```shell
curl --request GET \
  --url https://rest.cvrapi.dk/v2/dk/suggestions/participant/string \
  --header 'Accept: application/json' \
  --header 'Authorization: Basic {access-token}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, [
  CURLOPT_URL => "https://rest.cvrapi.dk/v2/dk/suggestions/participant/string",
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

url = "https://rest.cvrapi.dk/v2/dk/suggestions/participant/string"

headers = {
    "Accept": "application/json",
    "Authorization": "Basic {access-token}"
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

	url := "https://rest.cvrapi.dk/v2/dk/suggestions/participant/string"

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

xhr.open("GET", "https://rest.cvrapi.dk/v2/dk/suggestions/participant/string");
xhr.setRequestHeader("Accept", "application/json");
xhr.setRequestHeader("Authorization", "Basic {access-token}");

xhr.send(data);
```

```csharp
var client = new RestClient("https://rest.cvrapi.dk/v2/dk/suggestions/participant/string");
var request = new RestRequest(Method.GET);
request.AddHeader("Accept", "application/json");
request.AddHeader("Authorization", "Basic {access-token}");
IRestResponse response = client.Execute(request);
```

```ruby
require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://rest.cvrapi.dk/v2/dk/suggestions/participant/string")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["Accept"] = 'application/json'
request["Authorization"] = 'Basic {access-token}'

response = http.request(request)
puts response.read_body
```

`GET /v2/{country}/suggestions/participant/{name}`

Returns a list of participants

<h3 id="suggest-participants-by-name-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|country|path|string|true|Country|
|name|path|string|true|Name|

#### Enumerated Values

|Parameter|Value|
|---|---|
|country|dk|
|country|no|

<h3 id="suggest-participants-by-name-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Results|[Participant](#schemaparticipant)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Error](#schemaerror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Authentication information is missing or invalid|None|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[Error](#schemaerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not found|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|[Error](#schemaerror)|
|501|[Not Implemented](https://tools.ietf.org/html/rfc7231#section-6.6.2)|Internal Server Error|[Error](#schemaerror)|

### Response Headers

|Status|Header|Type|Format|Description|
|---|---|---|---|---|
|200|Access-Control-Allow-Origin|string||Origin allowed|
|200|Access-Control-Allow-Methods|string||Origin method allowed|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
authentication
</aside>

<h1 id="cvr-api-feeds">Feeds</h1>

## A list of VAT and last changed date.

<a id="opIdcompanyChanged"></a>

> Code samples

```shell
curl --request GET \
  --url https://rest.cvrapi.dk/v2/dk/changed/company/0 \
  --header 'Accept: application/json' \
  --header 'Authorization: Basic {access-token}'
```

```php
<?php

$curl = curl_init();

curl_setopt_array($curl, [
  CURLOPT_URL => "https://rest.cvrapi.dk/v2/dk/changed/company/0",
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

url = "https://rest.cvrapi.dk/v2/dk/changed/company/0"

headers = {
    "Accept": "application/json",
    "Authorization": "Basic {access-token}"
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

	url := "https://rest.cvrapi.dk/v2/dk/changed/company/0"

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

xhr.open("GET", "https://rest.cvrapi.dk/v2/dk/changed/company/0");
xhr.setRequestHeader("Accept", "application/json");
xhr.setRequestHeader("Authorization", "Basic {access-token}");

xhr.send(data);
```

```csharp
var client = new RestClient("https://rest.cvrapi.dk/v2/dk/changed/company/0");
var request = new RestRequest(Method.GET);
request.AddHeader("Accept", "application/json");
request.AddHeader("Authorization", "Basic {access-token}");
IRestResponse response = client.Execute(request);
```

```ruby
require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://rest.cvrapi.dk/v2/dk/changed/company/0")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["Accept"] = 'application/json'
request["Authorization"] = 'Basic {access-token}'

response = http.request(request)
puts response.read_body
```

`GET /v2/{country}/changed/company/{change_id}`

Returns a list of VAT and last changed date

<h3 id="a-list-of-vat-and-last-changed-date.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|country|path|string|true|Country|
|change_id|path|integer(int64)|true|The last change id|

#### Enumerated Values

|Parameter|Value|
|---|---|
|country|dk|
|country|no|

<h3 id="a-list-of-vat-and-last-changed-date.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Results|[CompanyChangedFeed](#schemacompanychangedfeed)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[Error](#schemaerror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Authentication information is missing or invalid|None|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[Error](#schemaerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not found|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|Internal Server Error|[Error](#schemaerror)|
|501|[Not Implemented](https://tools.ietf.org/html/rfc7231#section-6.6.2)|Internal Server Error|[Error](#schemaerror)|

### Response Headers

|Status|Header|Type|Format|Description|
|---|---|---|---|---|
|200|Access-Control-Allow-Origin|string||Origin allowed|
|200|Access-Control-Allow-Methods|string||Origin method allowed|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
authentication
</aside>

# Schemas

<h2 id="tocS_Company">Company</h2>
<!-- backwards compatibility -->
<a id="schemacompany"></a>
<a id="schema_Company"></a>
<a id="tocScompany"></a>
<a id="tocscompany"></a>

```json
{
  "vat": 0,
  "slug": "string",
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
    "latitude": 0,
    "addressid": "string",
    "start": "2019-08-24",
    "end": "2019-08-24",
    "timestamp": "2019-08-24"
  },
  "companyform": {
    "code": 10,
    "description": "A/S",
    "longdescription": "string",
    "holding": true
  },
  "companystatus": {
    "text": "AKTIV",
    "start": "2019-08-24"
  },
  "contact": {
    "email": "string",
    "www": "string",
    "phone": "string"
  },
  "status": {
    "code": 1,
    "creditcode": 1,
    "start": "2019-08-24",
    "end": "2019-08-24",
    "bankrupt": true
  },
  "industry": {
    "primary": {
      "code": 0,
      "text": "string"
    },
    "secondary": [
      {
        "sequence": 0,
        "code": 0,
        "text": "string"
      }
    ]
  },
  "life": {
    "start": "2019-08-24",
    "end": "2019-08-24",
    "name": "string",
    "adprotected": true
  },
  "accounting": {
    "period_start": "string",
    "period_end": "2019-08-24",
    "first_period_start": "2019-08-24",
    "first_period_end": "2019-08-24",
    "restructuring_period_start": "2019-08-24",
    "restructuring_period_end": "2019-08-24",
    "revision": true,
    "documents": [
      {
        "url": "string",
        "type": "string",
        "start": "2019-08-24",
        "end": "2019-08-24",
        "publicdate": "2019-08-24",
        "updated": "2019-08-24",
        "currency": "string",
        "summary": {
          "revenue": 0,
          "grossprofitloss": 0,
          "employeebenefitsexpense": 0,
          "depreciationamortisationexpenseprofitorloss": 0,
          "profitlossfromordinaryoperatingactivities": 0,
          "incomefrominvestmentsingroupenterprises": 0,
          "otherfinanceincome": 0,
          "otherfinanceexpenses": 0,
          "profitlossfromordinaryactivitiesbeforetax": 0,
          "taxexpenseonordinaryactivities": 0,
          "taxexpense": 0,
          "profitloss": 0,
          "equity": 0,
          "assets": 0,
          "proposeddividendrecognisedinequity": 0,
          "proposeddividend": 0,
          "dividend": 0,
          "noncurrentassets": 0,
          "landandbuildings": 0,
          "currentassets": 0,
          "inventories": 0,
          "shorttermtradereceivables": 0,
          "cashandcashequivalents": 0,
          "equityloan": 0,
          "provisions": 0,
          "longtermliabilitiesotherthanprovisions": 0,
          "shorttermliabilitiesotherthanprovisions": 0,
          "liabilitiesandequity": 0,
          "coverage": 0,
          "operatingmargin": 0,
          "roi": 0,
          "liquidityratio": 0,
          "solvencyratio": 0,
          "equityreturn": 0,
          "averagenumberofemployees": 0
        }
      }
    ],
    "tax": [
      {
        "year": 0,
        "tradeid": 0,
        "managementvat": 0,
        "companytype": "Administrationsselskab",
        "taxlaw": "string",
        "taxableincome": 0,
        "deficit": 0,
        "paidtax": 0
      }
    ]
  },
  "info": {
    "capital_amount": 0,
    "capital_currency": "string",
    "capital_partial": true,
    "capital_classes": true,
    "capital_ipo": true,
    "shareholder_below_5_percent": true,
    "shareholder_public": true,
    "articles_of_association": "2019-08-24",
    "purpose": "string",
    "bind": "string",
    "modes_legislation_money_laundering": true,
    "modes_social_economic": true,
    "modes_government": true,
    "lei_id": "string",
    "demerges": [
      {
        "start": "2019-08-24",
        "end": "2019-08-24",
        "ingoing": [
          {
            "vat": 0,
            "slug": "string",
            "life": {
              "start": "2019-08-24",
              "end": "2019-08-24",
              "name": "string",
              "adprotected": true
            }
          }
        ],
        "outgoing": [
          {
            "vat": 0,
            "slug": "string",
            "life": {
              "start": "2019-08-24",
              "end": "2019-08-24",
              "name": "string",
              "adprotected": true
            }
          }
        ]
      }
    ],
    "merges": [
      {
        "start": "2019-08-24",
        "end": "2019-08-24",
        "outgoing": [
          {
            "vat": 0,
            "slug": "string",
            "life": {
              "start": "2019-08-24",
              "end": "2019-08-24",
              "name": "string",
              "adprotected": true
            }
          }
        ]
      }
    ],
    "ean": [
      {
        "id": 0,
        "name": "string"
      }
    ]
  },
  "secondarynames": [
    "string"
  ],
  "subsidiaries": [
    {
      "subsidiarynumber": 0,
      "vat": 0,
      "slug": "string",
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
        "latitude": 0,
        "addressid": "string",
        "start": "2019-08-24",
        "end": "2019-08-24",
        "timestamp": "2019-08-24"
      },
      "life": {
        "start": "2019-08-24",
        "end": "2019-08-24",
        "name": "string",
        "adprotected": true,
        "main": true
      }
    }
  ],
  "employment": [
    {
      "months": [
        {
          "amount": 0,
          "amount_fte": 0,
          "interval_low": 0,
          "interval_high": 0,
          "interval_low_fte": 0,
          "interval_high_fte": 0,
          "year": 0,
          "month": 0
        }
      ],
      "quarters": [
        {
          "amount": 0,
          "amount_fte": 0,
          "interval_low": 0,
          "interval_high": 0,
          "interval_low_fte": 0,
          "interval_high_fte": 0,
          "year": 0,
          "quarter": 0
        }
      ],
      "years": [
        {
          "amount": 0,
          "amount_fte": 0,
          "interval_low": 0,
          "interval_high": 0,
          "interval_low_fte": 0,
          "interval_high_fte": 0,
          "year": 0
        }
      ]
    }
  ],
  "participants": [
    {
      "participantnumber": 0,
      "vat": 0,
      "slug": "string",
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
        "latitude": 0,
        "addressid": "string",
        "start": "2019-08-24",
        "end": "2019-08-24",
        "timestamp": "2019-08-24",
        "unlisted": true
      },
      "life": {
        "name": "string",
        "profession": "string",
        "deceased": true
      },
      "roles": {
        "type": "accountant",
        "life": {
          "start": "2019-08-24",
          "end": "2019-08-24",
          "title": "string",
          "election_format": "string",
          "owner_capital_classes": "string",
          "owner_percent": 0,
          "owner_voting_percent": 0,
          "special_ownership": "string",
          "special_ownership_description": "string",
          "substitute_member_for_id": 0,
          "substitute_member_for_name": "string"
        }
      }
    }
  ],
  "participations": [
    {
      "vat": 0,
      "slug": "string",
      "companyform": {
        "code": 10,
        "description": "A/S",
        "longdescription": "string",
        "holding": true
      },
      "companystatus": {
        "text": "AKTIV",
        "start": "2019-08-24"
      },
      "life": {
        "start": "2019-08-24",
        "end": "2019-08-24",
        "name": "string",
        "adprotected": true
      },
      "roles": {
        "type": "accountant",
        "life": {
          "start": "2019-08-24",
          "end": "2019-08-24",
          "title": "string",
          "election_format": "string",
          "owner_capital_classes": "string",
          "owner_percent": 0,
          "owner_voting_percent": 0,
          "special_ownership": "string",
          "special_ownership_description": "string",
          "substitute_member_for_id": 0,
          "substitute_member_for_name": "string"
        }
      }
    }
  ]
}

```

### Properties

|Name|Type|Description|
|---|---|---|---|---|
|vat|integer(int64)|VAT|
|slug|string|Slug|
|address|[Address](#schemaaddress)|none|
|companyform|[Companyform](#schemacompanyform)|none|
|companystatus|[Companystatus](#schemacompanystatus)|none|
|contact|[Contact](#schemacontact)|none|
|status|[Status](#schemastatus)|none|
|industry|[Industry](#schemaindustry)|none|
|life|[Life](#schemalife)|none|
|accounting|[Accounting](#schemaaccounting)|none|
|info|[Info](#schemainfo)|none|
|secondarynames|[Secondarynames](#schemasecondarynames)|none|
|subsidiaries|[Subsidiaries](#schemasubsidiaries)|none|
|employment|[Employment](#schemaemployment)|none|
|participants|[Participants](#schemaparticipants)|none|
|participations|[Participations](#schemaparticipations)|none|

<h2 id="tocS_Subsidiary">Subsidiary</h2>
<!-- backwards compatibility -->
<a id="schemasubsidiary"></a>
<a id="schema_Subsidiary"></a>
<a id="tocSsubsidiary"></a>
<a id="tocssubsidiary"></a>

```json
{
  "subsidiarynumber": 0,
  "vat": 0,
  "slug": "string",
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
    "latitude": 0,
    "addressid": "string",
    "start": "2019-08-24",
    "end": "2019-08-24",
    "timestamp": "2019-08-24"
  },
  "contact": {
    "email": "string",
    "www": "string",
    "phone": "string"
  },
  "industry": {
    "primary": {
      "code": 0,
      "text": "string"
    },
    "secondary": [
      {
        "sequence": 0,
        "code": 0,
        "text": "string"
      }
    ]
  },
  "life": {
    "start": "2019-08-24",
    "end": "2019-08-24",
    "name": "string",
    "adprotected": true,
    "main": true
  }
}

```

### Properties

|Name|Type|Description|
|---|---|---|---|---|
|subsidiarynumber|integer(int64)|Subsidiarynumber|
|vat|integer(int64)|VAT|
|slug|string|Slug|
|address|[Address](#schemaaddress)|none|
|contact|[Contact](#schemacontact)|none|
|industry|[Industry](#schemaindustry)|none|
|life|any|none|

allOf

|Name|Type|Description|
|---|---|---|---|---|
|» *anonymous*|[Life](#schemalife)|none|

and

|Name|Type|Description|
|---|---|---|---|---|
|» *anonymous*|object|none|
|»» main|boolean|If this is the main subsidiary|

<h2 id="tocS_Participant">Participant</h2>
<!-- backwards compatibility -->
<a id="schemaparticipant"></a>
<a id="schema_Participant"></a>
<a id="tocSparticipant"></a>
<a id="tocsparticipant"></a>

```json
{
  "participantnumber": 0,
  "slug": "string",
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
    "latitude": 0,
    "addressid": "string",
    "start": "2019-08-24",
    "end": "2019-08-24",
    "timestamp": "2019-08-24",
    "unlisted": true
  },
  "contact": {
    "email": "string",
    "www": "string",
    "phone": "string"
  },
  "attributes": {
    "type": "original_citizenship",
    "life": {
      "value": "string"
    }
  },
  "life": {
    "name": "string",
    "profession": "string",
    "deceased": true
  }
}

```

### Properties

|Name|Type|Description|
|---|---|---|---|---|
|participantnumber|integer(int64)|Participantnumber|
|slug|string|Slug|
|address|any|none|

allOf

|Name|Type|Description|
|---|---|---|---|---|
|» *anonymous*|[Address](#schemaaddress)|none|

and

|Name|Type|Description|
|---|---|---|---|---|
|» *anonymous*|object|none|
|»» unlisted|boolean|If this participants address is unlisted (hidden/secret)|

continued

|Name|Type|Description|
|---|---|---|---|---|
|contact|[Contact](#schemacontact)|none|
|attributes|[ParticipantAttributes](#schemaparticipantattributes)|none|
|life|[ParticipantLife](#schemaparticipantlife)|none|

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
  "latitude": 0,
  "addressid": "string",
  "start": "2019-08-24",
  "end": "2019-08-24",
  "timestamp": "2019-08-24"
}

```

### Properties

|Name|Type|Description|
|---|---|---|---|---|
|street|string¦null|Street name|
|streetcode|integer(int64)¦null|Unique street code|
|numberfrom|string¦null|House number from|
|numberto|string¦null|House number to|
|letterfrom|string¦null|House letter from|
|letterto|string¦null|House letter to|
|floor|string¦null|Floor in building|
|door|string¦null|Door in building|
|zipcode|integer(int64)¦null|Zipcode|
|cityname|string¦null|City|
|altcityname|string¦null|Place name|
|countrycode|string¦null|Country code|
|coname|string¦null|Care of|
|freetext|string¦null|An address written when not matched|
|municipalitycode|integer(int64)¦null|Municipality code|
|municipalityname|string¦null|Municipality name|
|mailbox|string¦null|Mailbox|
|kvh|string¦null|Danish KVH code|
|kvhx|string¦null|Danish KVHX code|
|longitude|number(float)¦null|WGS84 longitude|
|latitude|number(float)¦null|WGS84 latitude|
|addressid|string¦null|Danish address id in DAWA|
|start|string(date)¦null|Start date for this address|
|end|string(date)¦null|End date for this address|
|timestamp|string(date)¦null|Date this address was registred|

<h2 id="tocS_Companyform">Companyform</h2>
<!-- backwards compatibility -->
<a id="schemacompanyform"></a>
<a id="schema_Companyform"></a>
<a id="tocScompanyform"></a>
<a id="tocscompanyform"></a>

```json
{
  "code": 10,
  "description": "A/S",
  "longdescription": "string",
  "holding": true
}

```

### Properties

|Name|Type|Description|
|---|---|---|---|---|
|code|integer(int64)¦null|Company form code|
|description|string¦null|Company form description|
|longdescription|string¦null|Company form longer description fx. aktieselskab|
|holding|boolean|If this company is a holding company|

#### Enumerated Values

|Property|Value|
|---|---|
|code|10|
|code|15|
|code|20|
|code|30|
|code|40|
|code|45|
|code|50|
|code|60|
|code|70|
|code|80|
|code|81|
|code|90|
|code|95|
|code|100|
|code|110|
|code|115|
|code|130|
|code|140|
|code|150|
|code|151|
|code|152|
|code|160|
|code|170|
|code|180|
|code|190|
|code|195|
|code|210|
|code|220|
|code|230|
|code|235|
|code|240|
|code|245|
|code|250|
|code|260|
|code|270|
|code|280|
|code|285|
|code|290|
|code|291|
|code|520|
|code|990|
|description|A/S|
|description|ABA|
|description|AMT|
|description|ANS|
|description|APS|
|description|DØD|
|description|E/S|
|description|EFO|
|description|ENK|
|description|EUO|
|description|EØF|
|description|FAP|
|description|FAS|
|description|FBA|
|description|FES|
|description|FEØ|
|description|FFO|
|description|FIV|
|description|FKI|
|description|FMA|
|description|FON|
|description|FOR|
|description|GUS|
|description|I/S|
|description|IVS|
|description|K/S|
|description|KAS|
|description|KOM|
|description|MSS|
|description|PAR|
|description|PMV|
|description|REG|
|description|SCE|
|description|SMA|
|description|SOV|
|description|STA|
|description|TRU|
|description|UDL|
|description|UOP|
|description|ØVR|

<h2 id="tocS_Companystatus">Companystatus</h2>
<!-- backwards compatibility -->
<a id="schemacompanystatus"></a>
<a id="schema_Companystatus"></a>
<a id="tocScompanystatus"></a>
<a id="tocscompanystatus"></a>

```json
{
  "text": "AKTIV",
  "start": "2019-08-24"
}

```

### Properties

|Name|Type|Description|
|---|---|---|---|---|
|text|string¦null|Company status text|
|start|string(date)¦null|Start date for this status|

#### Enumerated Values

|Property|Value|
|---|---|
|text|AKTIV|
|text|NORMAL|
|text|OPLØST|
|text|OPLØST EFTER ERKLÆRING|
|text|OPLØST EFTER FRIVILLIG LIKVIDATION|
|text|OPLØST EFTER FUSION|
|text|OPLØST EFTER KONKURS|
|text|OPLØST EFTER SPALTNING|
|text|SLETTES|
|text|SLETTET|
|text|TVANGSOPLØST|
|text|UDEN RETSVIRKNING|
|text|UNDER FRIVILLIG LIKVIDATION|
|text|UNDER KONKURS|
|text|UNDER REASSUMERING|
|text|UNDER REASUMMERING|
|text|UNDER REKONSTRUKTION|
|text|UNDER TVANGSOPLØSNING|
|text|OPHØRT|
|text|OPLØST EFTER GRÆNSEOVERSKRIDENDE HJEMSTEDSFLYTNING|
|text|OPLØST VED ERKLÆRING|
|text|OPLØST EFTER GRÆNSEOVERSKRIDENDE FUSION|

<h2 id="tocS_Contact">Contact</h2>
<!-- backwards compatibility -->
<a id="schemacontact"></a>
<a id="schema_Contact"></a>
<a id="tocScontact"></a>
<a id="tocscontact"></a>

```json
{
  "email": "string",
  "www": "string",
  "phone": "string"
}

```

### Properties

|Name|Type|Description|
|---|---|---|---|---|
|email|string¦null|E-mail|
|www|string¦null|Website|
|phone|string¦null|Phone number|

<h2 id="tocS_Status">Status</h2>
<!-- backwards compatibility -->
<a id="schemastatus"></a>
<a id="schema_Status"></a>
<a id="tocSstatus"></a>
<a id="tocsstatus"></a>

```json
{
  "code": 1,
  "creditcode": 1,
  "start": "2019-08-24",
  "end": "2019-08-24",
  "bankrupt": true
}

```

### Properties

|Name|Type|Description|
|---|---|---|---|---|
|code|integer(int64)¦null|Status code|
|creditcode|integer(int64)¦null|Credit status code|
|start|string(date)¦null|Start date and time for this status|
|end|string(date)¦null|End date and time for this status|
|bankrupt|boolean|If this company is a bankrupt|

#### Enumerated Values

|Property|Value|
|---|---|
|code|1|
|code|2|
|code|3|
|code|4|
|code|5|
|code|6|
|code|8|
|code|9|
|creditcode|1|
|creditcode|3|

<h2 id="tocS_Industry">Industry</h2>
<!-- backwards compatibility -->
<a id="schemaindustry"></a>
<a id="schema_Industry"></a>
<a id="tocSindustry"></a>
<a id="tocsindustry"></a>

```json
{
  "primary": {
    "code": 0,
    "text": "string"
  },
  "secondary": [
    {
      "sequence": 0,
      "code": 0,
      "text": "string"
    }
  ]
}

```

### Properties

|Name|Type|Description|
|---|---|---|---|---|
|primary|object|none|
|» code|integer(int64)¦null|Industry code|
|» text|string¦null|Industry text|
|secondary|[object]|none|
|» sequence|integer(int64)¦null|The sequence number|
|» code|integer(int64)|Industry code|
|» text|string|Industry text|

<h2 id="tocS_Life">Life</h2>
<!-- backwards compatibility -->
<a id="schemalife"></a>
<a id="schema_Life"></a>
<a id="tocSlife"></a>
<a id="tocslife"></a>

```json
{
  "start": "2019-08-24",
  "end": "2019-08-24",
  "name": "string",
  "adprotected": true
}

```

### Properties

|Name|Type|Description|
|---|---|---|---|---|
|start|string(date)¦null|Start date|
|end|string(date)¦null|End date|
|name|string|Company name|
|adprotected|boolean|If this company is legally protected against unsolicited advertising|

<h2 id="tocS_Accounting">Accounting</h2>
<!-- backwards compatibility -->
<a id="schemaaccounting"></a>
<a id="schema_Accounting"></a>
<a id="tocSaccounting"></a>
<a id="tocsaccounting"></a>

```json
{
  "period_start": "string",
  "period_end": "2019-08-24",
  "first_period_start": "2019-08-24",
  "first_period_end": "2019-08-24",
  "restructuring_period_start": "2019-08-24",
  "restructuring_period_end": "2019-08-24",
  "revision": true,
  "documents": [
    {
      "url": "string",
      "type": "string",
      "start": "2019-08-24",
      "end": "2019-08-24",
      "publicdate": "2019-08-24",
      "updated": "2019-08-24",
      "currency": "string",
      "summary": {
        "revenue": 0,
        "grossprofitloss": 0,
        "employeebenefitsexpense": 0,
        "depreciationamortisationexpenseprofitorloss": 0,
        "profitlossfromordinaryoperatingactivities": 0,
        "incomefrominvestmentsingroupenterprises": 0,
        "otherfinanceincome": 0,
        "otherfinanceexpenses": 0,
        "profitlossfromordinaryactivitiesbeforetax": 0,
        "taxexpenseonordinaryactivities": 0,
        "taxexpense": 0,
        "profitloss": 0,
        "equity": 0,
        "assets": 0,
        "proposeddividendrecognisedinequity": 0,
        "proposeddividend": 0,
        "dividend": 0,
        "noncurrentassets": 0,
        "landandbuildings": 0,
        "currentassets": 0,
        "inventories": 0,
        "shorttermtradereceivables": 0,
        "cashandcashequivalents": 0,
        "equityloan": 0,
        "provisions": 0,
        "longtermliabilitiesotherthanprovisions": 0,
        "shorttermliabilitiesotherthanprovisions": 0,
        "liabilitiesandequity": 0,
        "coverage": 0,
        "operatingmargin": 0,
        "roi": 0,
        "liquidityratio": 0,
        "solvencyratio": 0,
        "equityreturn": 0,
        "averagenumberofemployees": 0
      }
    }
  ],
  "tax": [
    {
      "year": 0,
      "tradeid": 0,
      "managementvat": 0,
      "companytype": "Administrationsselskab",
      "taxlaw": "string",
      "taxableincome": 0,
      "deficit": 0,
      "paidtax": 0
    }
  ]
}

```

### Properties

|Name|Type|Description|
|---|---|---|---|---|
|period_start|string¦null|Starting period for this companies fiscal year|
|period_end|string(date)¦null|End period for this companies fiscal year|
|first_period_start|string(date)¦null|First period start|
|first_period_end|string(date)¦null|First period end|
|restructuring_period_start|string(date)¦null|Restructuring period start|
|restructuring_period_end|string(date)¦null|Restructuring period end|
|revision|boolean|If this company is being audited|
|documents|[object]¦null|none|
|» url|string|Direct URL to report|
|» type|string|The type of the report|
|» start|string(date)|Period start date|
|» end|string(date)|Period end date|
|» publicdate|string(date)|The date the report was published|
|» updated|string(date)¦null|The date the report was updated|
|» currency|string|The currency in ISO 4217 format|
|» summary|object|none|
|»» revenue|number(float)¦null|none|
|»» grossprofitloss|number(float)¦null|none|
|»» employeebenefitsexpense|number(float)¦null|none|
|»» depreciationamortisationexpenseprofitorloss|number(float)¦null|none|
|»» profitlossfromordinaryoperatingactivities|number(float)¦null|none|
|»» incomefrominvestmentsingroupenterprises|number(float)¦null|none|
|»» otherfinanceincome|number(float)¦null|none|
|»» otherfinanceexpenses|number(float)¦null|none|
|»» profitlossfromordinaryactivitiesbeforetax|number(float)¦null|none|
|»» taxexpenseonordinaryactivities|number(float)¦null|none|
|»» taxexpense|number(float)¦null|none|
|»» profitloss|number(float)¦null|none|
|»» equity|number(float)¦null|none|
|»» assets|number(float)¦null|none|
|»» proposeddividendrecognisedinequity|number(float)¦null|none|
|»» proposeddividend|number(float)¦null|none|
|»» dividend|number(float)¦null|none|
|»» noncurrentassets|number(float)¦null|none|
|»» landandbuildings|number(float)¦null|none|
|»» currentassets|number(float)¦null|none|
|»» inventories|number(float)¦null|none|
|»» shorttermtradereceivables|number(float)¦null|none|
|»» cashandcashequivalents|number(float)¦null|none|
|»» equityloan|number(float)¦null|none|
|»» provisions|number(float)¦null|none|
|»» longtermliabilitiesotherthanprovisions|number(float)¦null|none|
|»» shorttermliabilitiesotherthanprovisions|number(float)¦null|none|
|»» liabilitiesandequity|number(float)¦null|none|
|»» coverage|number(float)¦null|none|
|»» operatingmargin|number(float)¦null|none|
|»» roi|number(float)¦null|none|
|»» liquidityratio|number(float)¦null|none|
|»» solvencyratio|number(float)¦null|none|
|»» equityreturn|number(float)¦null|none|
|»» averagenumberofemployees|number(float)¦null|none|
|tax|[object]¦null|none|
|» year|integer(int64)|Year|
|» tradeid|integer(int64)|The companies own VAT|
|» managementvat|integer(int64)¦null|The mother VAT|
|» companytype|string|The type the company was under when the company paid tax|
|» taxlaw|string¦null|The law this company paid tax under|
|» taxableincome|integer(float)¦null|The income the company is being tax of|
|» deficit|integer(float)¦null|The deficit the company has reported (tax break)|
|» paidtax|integer(float)¦null|The amount of tax the company paid|

#### Enumerated Values

|Property|Value|
|---|---|
|companytype|Administrationsselskab|
|companytype|Datterselskab|
|companytype|Enkeltstående selskab|

<h2 id="tocS_Info">Info</h2>
<!-- backwards compatibility -->
<a id="schemainfo"></a>
<a id="schema_Info"></a>
<a id="tocSinfo"></a>
<a id="tocsinfo"></a>

```json
{
  "capital_amount": 0,
  "capital_currency": "string",
  "capital_partial": true,
  "capital_classes": true,
  "capital_ipo": true,
  "shareholder_below_5_percent": true,
  "shareholder_public": true,
  "articles_of_association": "2019-08-24",
  "purpose": "string",
  "bind": "string",
  "modes_legislation_money_laundering": true,
  "modes_social_economic": true,
  "modes_government": true,
  "lei_id": "string",
  "demerges": [
    {
      "start": "2019-08-24",
      "end": "2019-08-24",
      "ingoing": [
        {
          "vat": 0,
          "slug": "string",
          "life": {
            "start": "2019-08-24",
            "end": "2019-08-24",
            "name": "string",
            "adprotected": true
          }
        }
      ],
      "outgoing": [
        {
          "vat": 0,
          "slug": "string",
          "life": {
            "start": "2019-08-24",
            "end": "2019-08-24",
            "name": "string",
            "adprotected": true
          }
        }
      ]
    }
  ],
  "merges": [
    {
      "start": "2019-08-24",
      "end": "2019-08-24",
      "outgoing": [
        {
          "vat": 0,
          "slug": "string",
          "life": {
            "start": "2019-08-24",
            "end": "2019-08-24",
            "name": "string",
            "adprotected": true
          }
        }
      ]
    }
  ],
  "ean": [
    {
      "id": 0,
      "name": "string"
    }
  ]
}

```

### Properties

|Name|Type|Description|
|---|---|---|---|---|
|capital_amount|number(float)¦null|Capital amount|
|capital_currency|string¦null|The currency in ISO 4217 format|
|capital_partial|boolean|If the capital is partially paid|
|capital_classes|boolean|If the capital is decided into classes|
|capital_ipo|boolean|If the company is traded publicly|
|shareholder_below_5_percent|boolean|If the company has reported that there is no ownership over 5%|
|shareholder_public|boolean|If the register of shareholders is public|
|articles_of_association|string(date)¦null|Latest articles of association|
|purpose|string¦null|The purpose|
|bind|string¦null|The power og bind|
|modes_legislation_money_laundering|boolean|If the company has to act according to anti money laundering laws|
|modes_social_economic|boolean|If the company is an social economic company|
|modes_government|boolean|If the company is government or state company|
|lei_id|string¦null|The LEI code|
|demerges|[object]¦null|none|
|» start|string(date)|Period start date|
|» end|string(date)|Period end date|
|» ingoing|[object]¦null|none|
|»» vat|integer(int64)|VAT|
|»» slug|string|Slug|
|»» life|object|none|
|»»» start|string(date)|Start date|
|»»» end|string(date)|End date|
|»»» name|string|Company name|
|»»» adprotected|boolean|If this company is legally protected against unsolicited advertising|
|» outgoing|[object]¦null|none|
|»» vat|integer(int64)|VAT|
|»» slug|string|Slug|
|»» life|object|none|
|»»» start|string(date)|Start date|
|»»» end|string(date)|End date|
|»»» name|string|Company name|
|»»» adprotected|boolean|If this company is legally protected against unsolicited advertising|
|merges|[object]¦null|none|
|» start|string(date)|Period start date|
|» end|string(date)|Period end date|
|» outgoing|[object]¦null|none|
|»» vat|integer(int64)|VAT|
|»» slug|string|Slug|
|»» life|object|none|
|»»» start|string(date)|Start date|
|»»» end|string(date)|End date|
|»»» name|string|Company name|
|»»» adprotected|boolean|If this company is legally protected against unsolicited advertising|
|ean|[object]¦null|none|
|» id|integer(int64)|EAN number|
|» name|string|Company name|

<h2 id="tocS_Secondarynames">Secondarynames</h2>
<!-- backwards compatibility -->
<a id="schemasecondarynames"></a>
<a id="schema_Secondarynames"></a>
<a id="tocSsecondarynames"></a>
<a id="tocssecondarynames"></a>

```json
[
  "string"
]

```

### Properties

*None*

<h2 id="tocS_Subsidiaries">Subsidiaries</h2>
<!-- backwards compatibility -->
<a id="schemasubsidiaries"></a>
<a id="schema_Subsidiaries"></a>
<a id="tocSsubsidiaries"></a>
<a id="tocssubsidiaries"></a>

```json
[
  {
    "subsidiarynumber": 0,
    "vat": 0,
    "slug": "string",
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
      "latitude": 0,
      "addressid": "string",
      "start": "2019-08-24",
      "end": "2019-08-24",
      "timestamp": "2019-08-24"
    },
    "life": {
      "start": "2019-08-24",
      "end": "2019-08-24",
      "name": "string",
      "adprotected": true,
      "main": true
    }
  }
]

```

### Properties

|Name|Type|Description|
|---|---|---|---|---|
|subsidiarynumber|integer(int64)|Subsidiarynumber|
|vat|integer(int64)|VAT|
|slug|string|Slug|
|address|[Address](#schemaaddress)|none|
|life|any|none|

allOf

|Name|Type|Description|
|---|---|---|---|---|
|» *anonymous*|[Life](#schemalife)|none|

and

|Name|Type|Description|
|---|---|---|---|---|
|» *anonymous*|object|none|
|»» main|boolean|If this is the main subsidiary|

<h2 id="tocS_Employment">Employment</h2>
<!-- backwards compatibility -->
<a id="schemaemployment"></a>
<a id="schema_Employment"></a>
<a id="tocSemployment"></a>
<a id="tocsemployment"></a>

```json
[
  {
    "months": [
      {
        "amount": 0,
        "amount_fte": 0,
        "interval_low": 0,
        "interval_high": 0,
        "interval_low_fte": 0,
        "interval_high_fte": 0,
        "year": 0,
        "month": 0
      }
    ],
    "quarters": [
      {
        "amount": 0,
        "amount_fte": 0,
        "interval_low": 0,
        "interval_high": 0,
        "interval_low_fte": 0,
        "interval_high_fte": 0,
        "year": 0,
        "quarter": 0
      }
    ],
    "years": [
      {
        "amount": 0,
        "amount_fte": 0,
        "interval_low": 0,
        "interval_high": 0,
        "interval_low_fte": 0,
        "interval_high_fte": 0,
        "year": 0
      }
    ]
  }
]

```

### Properties

|Name|Type|Description|
|---|---|---|---|---|
|months|[allOf]¦null|none|

allOf

|Name|Type|Description|
|---|---|---|---|---|
|» *anonymous*|[EmploymentObject](#schemaemploymentobject)|none|

and

|Name|Type|Description|
|---|---|---|---|---|
|» *anonymous*|object|none|
|»» year|integer(int64)|Year|
|»» month|integer(int64)|Month|

continued

|Name|Type|Description|
|---|---|---|---|---|
|quarters|[allOf]¦null|none|

allOf

|Name|Type|Description|
|---|---|---|---|---|
|» *anonymous*|[EmploymentObject](#schemaemploymentobject)|none|

and

|Name|Type|Description|
|---|---|---|---|---|
|» *anonymous*|object|none|
|»» year|integer(int64)|Year|
|»» quarter|integer(int64)|Quarter|

continued

|Name|Type|Description|
|---|---|---|---|---|
|years|[allOf]¦null|none|

allOf

|Name|Type|Description|
|---|---|---|---|---|
|» *anonymous*|[EmploymentObject](#schemaemploymentobject)|none|

and

|Name|Type|Description|
|---|---|---|---|---|
|» *anonymous*|object|none|
|»» year|integer(int64)|Year|

<h2 id="tocS_EmploymentObject">EmploymentObject</h2>
<!-- backwards compatibility -->
<a id="schemaemploymentobject"></a>
<a id="schema_EmploymentObject"></a>
<a id="tocSemploymentobject"></a>
<a id="tocsemploymentobject"></a>

```json
{
  "amount": 0,
  "amount_fte": 0,
  "interval_low": 0,
  "interval_high": 0,
  "interval_low_fte": 0,
  "interval_high_fte": 0
}

```

### Properties

|Name|Type|Description|
|---|---|---|---|---|
|amount|integer(int64)¦null|Precise amount employeed|
|amount_fte|integer(int64)¦null|Precise amount employeed full-time equivalents|
|interval_low|integer(int64)¦null|Minimum employeed in interval|
|interval_high|integer(int64)¦null|Maximum employeed in interval|
|interval_low_fte|integer(int64)¦null|Minimum employeed full-time equivalents in interval|
|interval_high_fte|integer(int64)¦null|Minimum employeed full-time equivalents in interval|

<h2 id="tocS_Participants">Participants</h2>
<!-- backwards compatibility -->
<a id="schemaparticipants"></a>
<a id="schema_Participants"></a>
<a id="tocSparticipants"></a>
<a id="tocsparticipants"></a>

```json
[
  {
    "participantnumber": 0,
    "vat": 0,
    "slug": "string",
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
      "latitude": 0,
      "addressid": "string",
      "start": "2019-08-24",
      "end": "2019-08-24",
      "timestamp": "2019-08-24",
      "unlisted": true
    },
    "life": {
      "name": "string",
      "profession": "string",
      "deceased": true
    },
    "roles": {
      "type": "accountant",
      "life": {
        "start": "2019-08-24",
        "end": "2019-08-24",
        "title": "string",
        "election_format": "string",
        "owner_capital_classes": "string",
        "owner_percent": 0,
        "owner_voting_percent": 0,
        "special_ownership": "string",
        "special_ownership_description": "string",
        "substitute_member_for_id": 0,
        "substitute_member_for_name": "string"
      }
    }
  }
]

```

### Properties

|Name|Type|Description|
|---|---|---|---|---|
|participantnumber|integer(int64)|Participant number|
|vat|integer(int64)|VAT|
|slug|string|Slug|
|address|any|none|

allOf

|Name|Type|Description|
|---|---|---|---|---|
|» *anonymous*|[Address](#schemaaddress)|none|

and

|Name|Type|Description|
|---|---|---|---|---|
|» *anonymous*|object|none|
|»» unlisted|boolean|If this participants address is unlisted (hidden/secret)|

continued

|Name|Type|Description|
|---|---|---|---|---|
|life|[ParticipantLife](#schemaparticipantlife)|none|
|roles|[ParticipantRoles](#schemaparticipantroles)|none|

<h2 id="tocS_Participations">Participations</h2>
<!-- backwards compatibility -->
<a id="schemaparticipations"></a>
<a id="schema_Participations"></a>
<a id="tocSparticipations"></a>
<a id="tocsparticipations"></a>

```json
[
  {
    "vat": 0,
    "slug": "string",
    "companyform": {
      "code": 10,
      "description": "A/S",
      "longdescription": "string",
      "holding": true
    },
    "companystatus": {
      "text": "AKTIV",
      "start": "2019-08-24"
    },
    "life": {
      "start": "2019-08-24",
      "end": "2019-08-24",
      "name": "string",
      "adprotected": true
    },
    "roles": {
      "type": "accountant",
      "life": {
        "start": "2019-08-24",
        "end": "2019-08-24",
        "title": "string",
        "election_format": "string",
        "owner_capital_classes": "string",
        "owner_percent": 0,
        "owner_voting_percent": 0,
        "special_ownership": "string",
        "special_ownership_description": "string",
        "substitute_member_for_id": 0,
        "substitute_member_for_name": "string"
      }
    }
  }
]

```

### Properties

|Name|Type|Description|
|---|---|---|---|---|
|vat|integer(int64)|VAT|
|slug|string|Slug|
|companyform|[Companyform](#schemacompanyform)|none|
|companystatus|[Companystatus](#schemacompanystatus)|none|
|life|[Life](#schemalife)|none|
|roles|[ParticipantRoles](#schemaparticipantroles)|none|

<h2 id="tocS_ParticipantLife">ParticipantLife</h2>
<!-- backwards compatibility -->
<a id="schemaparticipantlife"></a>
<a id="schema_ParticipantLife"></a>
<a id="tocSparticipantlife"></a>
<a id="tocsparticipantlife"></a>

```json
{
  "name": "string",
  "profession": "string",
  "deceased": true
}

```

### Properties

|Name|Type|Description|
|---|---|---|---|---|
|name|string¦null|Participant name|
|profession|string¦null|Participants profession|
|deceased|boolean|If this participant is deceased|

<h2 id="tocS_ParticipantAttributes">ParticipantAttributes</h2>
<!-- backwards compatibility -->
<a id="schemaparticipantattributes"></a>
<a id="schema_ParticipantAttributes"></a>
<a id="tocSparticipantattributes"></a>
<a id="tocsparticipantattributes"></a>

```json
{
  "type": "original_citizenship",
  "life": {
    "value": "string"
  }
}

```

### Properties

|Name|Type|Description|
|---|---|---|---|---|
|type|string|The attribute type|
|life|object|none|
|» value|string|The value|

#### Enumerated Values

|Property|Value|
|---|---|
|type|original_citizenship|

<h2 id="tocS_ParticipantRoles">ParticipantRoles</h2>
<!-- backwards compatibility -->
<a id="schemaparticipantroles"></a>
<a id="schema_ParticipantRoles"></a>
<a id="tocSparticipantroles"></a>
<a id="tocsparticipantroles"></a>

```json
{
  "type": "accountant",
  "life": {
    "start": "2019-08-24",
    "end": "2019-08-24",
    "title": "string",
    "election_format": "string",
    "owner_capital_classes": "string",
    "owner_percent": 0,
    "owner_voting_percent": 0,
    "special_ownership": "string",
    "special_ownership_description": "string",
    "substitute_member_for_id": 0,
    "substitute_member_for_name": "string"
  }
}

```

### Properties

|Name|Type|Description|
|---|---|---|---|---|
|type|string|The roles type|
|life|object|none|
|» start|string(date)|Period start date|
|» end|string(date)|Period end date|
|» title|string|The title of the role|
|» election_format|string|Election format|
|» owner_capital_classes|string|Capital classes fx. A or B|
|» owner_percent|number(float)|The ownership share|
|» owner_voting_percent|number(float)|The voting share|
|» special_ownership|string|If there is a special ownership|
|» special_ownership_description|string|Description of the special ownership|
|» substitute_member_for_id|integer(int64)|The participantnumber of the substitute|
|» substitute_member_for_name|string|The name of the substitute participant|

#### Enumerated Values

|Property|Value|
|---|---|
|type|accountant|
|type|board|
|type|branch_manager|
|type|daily_management|
|type|director|
|type|founder|
|type|fully_responsible_participant|
|type|liquidator|
|type|owner|
|type|real_owner|
|type|supervisory_board|

<h2 id="tocS_CompanyChangedFeed">CompanyChangedFeed</h2>
<!-- backwards compatibility -->
<a id="schemacompanychangedfeed"></a>
<a id="schema_CompanyChangedFeed"></a>
<a id="tocScompanychangedfeed"></a>
<a id="tocscompanychangedfeed"></a>

```json
{
  "vat": 0,
  "lastupdate": {
    "datetime": "2019-08-24T14:15:22Z",
    "unix": 0
  },
  "change_id": 0
}

```

### Properties

|Name|Type|Description|
|---|---|---|---|---|
|vat|integer(int64)|VAT|
|lastupdate|object|none|
|» datetime|string(date-time)|Date and time in ISO 8601.|
|» unix|integer(int64)|none|
|change_id|integer(int64)|The change id that you need to use for your new request|

<h2 id="tocS_Error">Error</h2>
<!-- backwards compatibility -->
<a id="schemaerror"></a>
<a id="schema_Error"></a>
<a id="tocSerror"></a>
<a id="tocserror"></a>

```json
{
  "error": "INTERNAL_ERROR",
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
|error|INTERNAL_ERROR|
|error|INVALID_UA|
|error|METHOD_NOT_IMPLEMENTED|
|error|QUOTA_EXCEEDED|

