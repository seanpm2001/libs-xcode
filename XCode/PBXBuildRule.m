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
#import "PBXBuildRule.h"

@implementation PBXBuildRule

- (void) dealloc
{
  RELEASE(fileType);
  RELEASE(isEditable);
  RELEASE(outputFiles);
  RELEASE(compilerSpec);

  [super dealloc];
}

// Methods....
- (NSString *) fileType // getter
{
  return fileType;
}

- (void) setFileType: (NSString *)object; // setter
{
  ASSIGN(fileType,object);
}

- (NSString *) isEditable // getter
{
  return isEditable;
}

- (void) setIsEditable: (NSString *)object; // setter
{
  ASSIGN(isEditable,object);
}

- (NSMutableArray *) outputFiles // getter
{
  return outputFiles;
}

- (void) setOutputFiles: (NSMutableArray *)object; // setter
{
  ASSIGN(outputFiles,object);
}

- (NSString *) compilerSpec // getter
{
  return compilerSpec;
}

- (void) setCompilerSpec: (NSString *)object; // setter
{
  ASSIGN(compilerSpec,object);
}


@end
