/**
 * @providesModule react-native-size-classes
 */

import { NativeModules } from 'react-native';

const RNSizeClasses = NativeModules.RNSizeClasses;

 module.exports = {
     getSizeClasses: RNSizeClasses.getSizeClasses,
     isIpad: () => RNSizeClasses.isIpad,
 }