# Ti Keychain Module

## Building

To build, start by editing your Titanium SDK version in titanium.xcconfig. 
Make sure the path to your SDK is correct as well.  Then type `./build.py`.

More information on building modules can be found at the 
[Titanium Wiki](https://wiki.appcelerator.org/display/guides/iOS+Module+Development+Guide).

## Installation

After building, you should have a `com.obscure.keychain_real-iphone-0.1.zip` file
in the directory where you cloned the source.  Extract this into your Titanium
project directory.  It should create a 'modules' folder if you didn't have one already.

Add the following into your `tiapp.xml`, adding to your modules section if
you already have one:

```xml
<modules>
   <module version="0.1">com.obscure.keychain_real</module> 
</modules>
```

## Usage

First, require the module

```javascript
var Keychain = require('com.obscure.keychain');
```

Now, create a keychain item:

```javascript
var myItem = Keychain.createItem({identifier: 'myLogin'});
```

Now you can set the `account` and `valueData` properties on the item:

```javascript
myItem.account = 'foo';
myItem.valueData = 'some password';
```

These will be available the next time you create an item with the same
identifier.

## Reference

### Construction

`Keychain.createItem(spec)`

Where `spec` is an object with properties

* identifier - *string*
* accessGroup - *string*, optional; can be *undefined*.  If you have multiple
   applications which need to share the same encrypted data, you can set
   this to some string identifying the group.

### Properties

* account
* valueData
* description
* comment

### Methods

* reset()

## Credit

I forked this from github user [pegli](https://github.com/pegli/ti_keychain) and also grabbed some commits from [omorandi](https://github.com/omorandi/ti_keychain/tree/master/mobile/ios).

## License

Apache version 2.  Apple portions are under an Apple specific license.
