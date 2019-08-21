# SnapKitPlayground

SnapKitPlayground is a Xcode project that uses a playground as a preview of a UIViewController that uses [SnapKit](http://snapkit.io/) for managing the constraints.

## Installation

Download the project and in the Terminal execute:

```bash
pod install
```

## How to add a playground to a new project

I found the solution in this [stackoverflow answer](https://stackoverflow.com/a/54639761)

1. Create a simple Single View App.
2. Add all pods needed as usual.
3. Build and run the app.
4. Create a new single view playground separated from the project (not use the same name of the project).
5. Go to the project workspace and use "Add files to ..." in Project Navigation and add the previously created playground.
6. Build the project and the playground.

Now you can use import in the playground.

## How to access the project's classes in the playground

1. Create a new "Cocoa Touch Framework" target.
2. In the Podfile add the SnapKit to the new framework.
3. In Xcode File Inspector check the new framework Target Membership to the ViewControllers you want to access in the playground.
5. Import the new framework in the playground.
6. Now you have access to the ViewController's project in the playground.

Note: You have to override the loadView() method of the ViewController in order to see the desing in the playground's preview.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
