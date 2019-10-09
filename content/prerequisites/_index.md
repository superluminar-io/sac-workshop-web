---
title: Prerequisites
weight: 5
---

For getting started with the workshop you need to have **Administrator Access** to an AWS Account. Please do not use the 
Accounts root user since this is bad practice and leads to potential security risks.

We recommend you create a dedicate IAM user following [this guide](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html#id_users_create_console). 

## Required software

Since we are using [AWS Cloud9](https://aws.amazon.com/cloud9/) in this workshop, you don't need any additional software
except from an up-to-date web browser.

## Configure AWS access

```shell
$ aws configure
AWS Access Key ID [None]: <your key>
AWS Secret Access Key [None]: <your secret>
Default region name [None]: eu-central-1
Default output format [None]:
```

## Make sure AWS works

```shell
$ aws sts get-caller-identity
{
    "UserId": "AROAJIFDNOS32O5CUCCXO:1547722234274198000",
    "Account": "123456789012",
    "Arn": "arn:aws:sts::123456789012:something/something/something"
}
```
