# salesforce-smalltalk [![Build Status](https://travis-ci.org/newapplesho/salesforce-smalltalk.svg?branch=master)](https://travis-ci.org/newapplesho/salesforce-smalltalk)
Salesforce API Library for Pharo Smalltalk

## Supported Smalltalk Versions

Pharo Smalltalk 5.0, 6.0

## Installation

```smalltalk
Metacello new
    baseline: 'Salesforce';
    repository: 'github://newapplesho/salesforce-smalltalk/pharo-repository';
    load.
```

## Setup

```smalltalk
SFSettings initialize.SFSettings default.SFSettings default username: '<Your mailaddress>'.
"You must append the user’s security token to their password A security token is an automatically-generated key from Salesforce."SFSettings default password: '<Your password><Security token>'.
"Sandbox"SFSettings default isSandbox: true.
```


## Authentication

```smalltalk
SFClient new login.
```

## Simple Query

```smalltalk
client := SFClient new.client query: 'SELECT name FROM Account'.
```

## Account and Contact Information

```smalltalk
accessor := SFAccessor new.
accessor allAccounts: { 'Id'. 'Name' }.accessor allContacts: { 'Id'. 'Email' }.accessor allContacts: { 'Id'. 'Email' }  withAccount: { 'Id'. 'Name' }.accessor allAccounts: { 'Id'. 'Name'. } withContacts: { 'Id'. 'Email' }.
```