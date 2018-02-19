// import like this:
// import * as SizeClasses from 'react-native-size-classes'

export function sizeClasses(): (
    callback: (vSizeClass: string, hSizeClass: string) => void
) => void;
export function isIpad(): boolean;