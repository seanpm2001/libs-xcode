/*
   Copyright (C) 2018, 2019, 2020, 2021 Free Software Foundation, Inc.

   Written by: Gregory John Casament <greg.casamento@gmail.com>
   Date: 2022
   
   This file is part of the GNUstep XCode Library

   This library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2 of the License, or (at your option) any later version.
   
   This library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
   
   You should have received a copy of the GNU Lesser General Public
   License along with this library; if not, write to the Free
   Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110 USA.
*/

#import "PBXCommon.h"
#import "PBXRezBuildPhase.h"

@implementation PBXRezBuildPhase

-(BOOL) build
{
  NSEnumerator *en = [_files objectEnumerator];
  id file = nil;
  BOOL result = YES;

  xcputs("=== Executing Rez Build Phase");

  while((file = [en nextObject]) != nil && result)
    {
      xcputs([[NSString stringWithFormat: @"\tFile = %@",file] cString]);
    }

  xcputs("=== Completed Rez Build Phase");

  return result;
}

@end
