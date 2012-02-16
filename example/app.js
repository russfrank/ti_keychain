// This is a test harness for your module
// You should do something interesting in this harness 
// to test out the module and to provide instructions 
// to users on how to use it by example.


// open a single window
var window = Ti.UI.createWindow({
	backgroundColor:'white'
});
var label = Ti.UI.createLabel();
window.add(label);
window.open();

// TODO: write your module tests here
var ti_keychain = require('com.obscure.keychain_real');
Ti.API.info("module is => " + ti_keychain);

label.text = ti_keychain.example();

Ti.API.info("module exampleProp is => " + ti_keychain.exampleProp);
ti_keychain.exampleProp = "This is a test value";

if (Ti.Platform.name == "android") {
	var proxy = ti_keychain.createExample({
		message: "Creating an example Proxy",
		backgroundColor: "red",
		width: 100,
		height: 100,
		top: 100,
		left: 150
	});

	proxy.printMessage("Hello world!");
	proxy.message = "Hi world!.  It's me again.";
	proxy.printMessage("Hello world!");
	window.add(proxy);
}

