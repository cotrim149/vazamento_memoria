//
//  BEPiDAluno.h
//  vazamento_memoria
//
//  Created by ALS on 02/05/14.
//  Copyright (c) 2014 Cotrim. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BEPiDPatrimonio;

@interface BEPiDAluno : NSObject

@property NSString* nomeAluno;
@property unsigned int matriculaAluno;

-(void)addPatrimonio:(BEPiDPatrimonio *)p;
-(unsigned int)totalPatrimonio;



@end
