___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "displayName": "Navistone",
  "description": "Navistone",
  "securityGroups": [],
  "id": "cvt_temp_public_id",
  "type": "TAG",
  "version": 1,
  "brand": {
    "displayName": "Navistone",
    "id": "brand_dummy"
  },
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "alwaysInSummary": true,
    "valueValidators": [
      {
        "errorMessage": "You must provide a Pixel ID",
        "type": "NON_EMPTY"
      },
      {
        "args": [
          "^[0-9,]+$"
        ],
        "errorMessage": "Invalid Pixel ID format",
        "type": "REGEX"
      }
    ],
    "displayName": "Order ID",
    "simpleValueType": true,
    "name": "oid",
    "type": "TEXT",
    "valueHint": "e.g. 1234"
  },
  {
    "displayName": "Order Total",
    "simpleValueType": true,
    "name": "ototal",
    "type": "TEXT"
  }
]


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "send_pixel",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://code.murdoog.com/"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const sendPixel = require('sendPixel');
const ototal = data.ototal;
const oid = data.oid;


const ur= 'https://code.murdoog.com/onetag/C1EB7646E03B7C.js';
const url='https://code.murdoog.com/onetag/C1EB7646E03B7C.js?orderId='+oid+'&orderTotal='+ototal;

//<img src="https://trkn.us/pixel/conv/ppt=4211;g=confirmation-page;gid=18243;ord=[uniqueid]" height="0" width="0" border="0" />
//injectScript(ur, data.gtmOnSuccess, data.gtmOnFailure, ur);

const baseUrl = url;

sendPixel(url , data.gtmOnSuccess, data.gtmOnFailure);


___NOTES___

Created on 07/05/2019, 15:54:25
