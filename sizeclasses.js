/**
 * @providesModule react-native-size-classes
 */

import { NativeModules, Platform } from 'react-native';

if (Platform.OS === 'ios') {
  const RNSizeClasses = NativeModules.RNSizeClasses;

  module.exports = {
    getSizeClasses: RNSizeClasses.getSizeClasses,
    isIpad: () => RNSizeClasses.isIpad,
  }
}
