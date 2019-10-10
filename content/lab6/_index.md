---
title: Lab 6 - Tracing w/ X-Ray
weight: 40
---

**In this Lab we will**:

- Enable AWS X-Ray for our functions using SAM
- Learn how distributed tracing works with AWS X-Ray 
- Instrument our application code to gain even more insights

**You completed this lab if you**:

- Can differentiate traces in X-Ray by HTTP Method
- Can tell how long your function needed to start (cold vs. warm)
- Can tell how long your function needed to persist and fetch data from DynamoDB

## Tracing with AWS X-Ray

[AWS X-Ray](https://aws.amazon.com/xray/features/) allows us to do distributed tracing in a way that we can trace 
invocations of our functions through the different AWS services.

### Step 1 - Build-in tracing

AWS SAM allows us to easily configure the X-Ray tracing mode for our lambda functions 
(see `Tracing` in the [function properties](https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#awsserverlessfunction)) 

### Step 2 - Instrument your applications codes

In order have more control over the traces to record it is possible to write your own segments in your applications
code (= instrumentation). An easy way to achieve this is by using the *xray sdk for python* and the 
[Decorator for function auto-capture](https://docs.aws.amazon.com/xray-sdk-for-python/latest/reference/basic.html#decorator-for-function-auto-capture)
feature.

## Hints

- You can find an example implementation here: [Step 1](https://github.com/superluminar-io/sac-workshop/compare/lab5..lab6_a?expand=1)
- You can find an example implementation here: [Step 2](https://github.com/superluminar-io/sac-workshop/compare/lab6_a..lab6_b?expand=1)
