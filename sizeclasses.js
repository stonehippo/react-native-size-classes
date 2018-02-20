/**
 * @providesModule react-native-size-classes
 */

import { NativeModules, Platform } from 'react-native';

let getSizeClasses, isIpad;

// The RNSizeClasses module is only defined for iOS, so do not try to
// load it on Android devices.
if (Platform.OS === 'ios') {
  const RNSizeClasses = NativeModules.RNSizeClasses;

  getSizeClasses: RNSizeClasses.getSizeClasses;
  isIpad = () => RNSizeClasses.isIpad;
}

module.exports = {
  getSizeClasses,
  isIpad,
}
