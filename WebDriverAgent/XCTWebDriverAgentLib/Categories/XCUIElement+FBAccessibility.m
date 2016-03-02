// Copyright 2004-present Facebook. All Rights Reserved.

/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "XCUIElement+FBAccessibility.h"

#import "XCElementSnapshot+Helpers.h"

@implementation XCUIElement (FBAccessibility)

- (BOOL)isFbAccessibilityElement
{
  return self.lastSnapshot.isFbAccessibilityElement;
}

@end

@implementation XCElementSnapshot (FBAccessibility)

- (BOOL)isFbAccessibilityElement
{
  return [(NSNumber *)[self fb_attributeValue:FB_XCAXAIsElementAttribute] boolValue];
}

@end
