# react-native-size-classes

Get the `UIWindow` values for `UITraitCollection` vertical and horizontal size classes.

## Installation

Using npm:

```
npm install --save react-native-size-classes
```

Using yarn:

```
yarn add react-native-size-classes
```

## Linking

### Automatic

```
react-native link react-native-size-classes
```

or with rnpm:

```
rnpm link react-native-size-classes
```

## Usage

```
import SizeClasses from 'react-native-size-classes'
```

## API

The API currently supports iOS only. You'll probably want to wrap calls in `Platform.OS` or `Platform.select()`.

### getSizeClasses()

Uses the `UIWindow` to return a Promise that resolves values for `vertialSizeClass` and `horizontalSizeClass` for the overall app.

#### Examples

```
SizeClasses.getSizeClasses().then((sc) => console.log(sc.vertical))
```

---

### isIpad()

Uses the `UIWindow` value for `userInterfaceIdiom` to determine if this device is an iPad or not.

#### Examples

```
const isIpad = SizeClasses.isIpad(); //true
```
