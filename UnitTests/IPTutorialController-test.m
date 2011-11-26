//
//  IPTutorialController-test.m
//  ipad-portfolio
//
//  Created by Brian Dewey on 11/13/11.
//  Copyright 2011 Brian Dewey.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "GTMSenTestCase.h"
#import "IPTutorialController.h"

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

@interface IPTutorialController_test : SenTestCase<IPTutorialControllerDelegate>

@end

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

@implementation IPTutorialController_test

////////////////////////////////////////////////////////////////////////////////

- (void)testOutlets {
  
  IPTutorialController *tutorial = [[[IPTutorialController alloc] initWithDelegate:self] autorelease];
  
  [tutorial view];
  STAssertNotNil(tutorial.background, nil);
  STAssertNotNil(tutorial.learnMore, nil);
  STAssertNotNil(tutorial.startNow, nil);
}

#pragma mark - IPTutorialControllerDelegate

- (void)tutorialControllerDidSelectLearnMore:(IPTutorialController *)controller {
  
  //
  //  NOTHING
  //
}

- (void)tutorialControllerDidDismiss:(IPTutorialController *)controller {
  
  //
  //  NOTHING
  //
}

@end
