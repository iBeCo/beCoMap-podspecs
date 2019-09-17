# beCo-iOS-SDK

## Get Started

beCo map SDK for iOS will help you setup a map based navigation
system for your users on their apple devices. The API will be able to
access the server, points and routes, user touches and so on
automatically. Using the SDK you can provide an interactive and
engaging experience to your users with the least effort.


### 1. Get Xcode
To integrate beCoMap iOS SDK, install Xcode 9 or latest version. [Xcode](https://developer.apple.com/xcode/)


### 2. Add Library
The beCoMap SDK for iOS is available as a CocoaPods pod. 
If you don't already have the CocoaPods tool, install it on macOS by running the following command from the terminal. For details, see the [CocoaPods Getting Started guide.](https://guides.cocoapods.org/using/getting-started.html)

Edit the Podfile and add your dependencies.
```
source 'https://github.com/iBeCo/beCoMap-podspecs.git'
target 'YOUR_APPLICATION_TARGET_NAME_HERE' do
  pod 'beCoMap'
end
```
Run the pod install command. This will install the APIs specified in the Podfile, along with any dependencies they may have.
Close Xcode, and then open (double-click) your project's .xcworkspace file to launch Xcode. From this time onwards, you must use the .xcworkspace file to open the project.

### 3. Get beCo Map Key
Go to [beCo console](https://app.becomap.com). 

Create your application, and generate your beCo Server API Key.


### 3. Giving permissions
Add the following to tour info.plist

```
<key>NSLocationAlwaysAndWhenInUseUsageDescription</key>
<string>Application requirs location aceess permision to track your location.</string>
<key>NSLocationWhenInUseUsageDescription</key>
<string>Application requirs location aceess permision to track your location.</string>
```


### 4. Configuring BeCo map
Add your beCo Server API Key, to your AppDelegate.swift as follows:

- Add the following import statements:
```
import BeCo
```

- Configure a BeCoApp shared instance, typically in your app's ```application:didFinishLaunchingWithOptions: ```method. This will validate the token. 

```
let beCo = BeCo.sharedInstance()
beCo.configure(token: "YOUR_BECO_MAP_KEY"))
```


### 5. Get BESite's
Get site information. You can create sites from becoapp.console.com
```
let beCo = BeCo.sharedInstance()
beCo.delegate = self
beCoManager.getSiteDetails(around: "YOUR_CLLocation_POINT")
```
This will trigger the following delegate method along with your site information.
```
func beco(didFindSites sites: BESites, around location: CLLocation) 
```


### 6. Add  BEView. 
* Add programatically. Using ```init(frame: CGRect)```

```
var mapView: BEView = BEView.init(frame: self.view.frame)
mapView.delegate = self
self.view.addSubview(mapView)
```

* As final step, Set site for your BEView. 
```
mapView.setSite(BESite)
```
* Once the map is loaded, following delegate's will be triggered based on the scenario. 
```func becoView(_ mapView: BEView, didLoadWith site: BESite) ```

* If an error occurrs while processing any of your request to BEView, below delegate will be triggered 
```func becoView(_ mapView: BEView, didFailedWith error: Error)```


### 7. Get user position
You will get all the updates in user position from delegate 
```func becoView(_ mapView: BEView, didUpdateUserLocation point: BEPoint)```

### 8. Pin Point on BEView
To highlight a MapPint on your BEView, use the following code.
```
mapView.select(point: BEPoint)
```


### 9. Search for a BEPoint
You can search for a point in your BEView. Check the following code snippet.
```
mapView.findMapPoints(searchText: "YOUR_SEARCH_TEXT")
```

This will trigger a delegate method with point information.
```
func becoView(_ mapView: BEView, didFindResult results: BEPoints, forText searchText: String) {
     //Manage your  BEMapPoints
     /*
     to highlight first point on Map 
     mapView.select(point: BEPoint)
     */
}
```


### 10. Draw a path
To plot a route on ```BEView```, use the following code.
```
mapView.showRoute(from: BEPoint, to: BEPoint)
```


```mapView.showRoute(from: BEPoint, to: BEPoint)``` will trigger the following delegates

```
becoView(_ mapView: BEView, didRouteFrom source: BEPoint, to destination: BEPoint)
becoView(_ mapView: BEView, didFailedWith error: Error)
```


### 11. Route navigation in BeCo
You can navigate a route on your BEView with the following code.
```
mapView.navigate(from: BEPoint, to: BEPoint)
```

### 12. BEViewDelegate's
 
```
    becoView(_ mapView: BEView, didLoadWith site: BESite)
    
    becoView(_ mapView: BEView, didFailedWith error: Error)
    
    becoView(_ mapView: BEView, didUpdateUserLocation point: BEPoint)
    
    becoView(_ mapView: BEView, didSelectedPoint point: BEPoint)
    
    becoView(_ mapView: BEView, didFindResult results: BEPoints, forText searchText: String)
    
    becoView(_ mapView: BEView, didRouteFrom source: BEPoint,to destination: BEPoint)
    
    becoView(_ mapView: BEView, didStartNavigatingFrom source: BEPoint,to destination: BEPoint)
    
    becoView(_ mapView: BEView, didEndNavigationWith source: BEPoint, destination: BEPoint)
    
    becoView(_ mapView: BEView, didDeviatedTo point: BEPoint)
 
```
