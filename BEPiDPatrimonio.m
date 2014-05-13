//
//  BEPiDPatrimonio.m
//  vazamento_memoria
//
//  Created by ALS on 02/05/14.
//  Copyright (c) 2014 Cotrim. All rights reserved.
//

#import "BEPiDPatrimonio.h"
#import "BEPiDAluno.h"
@implementation BEPiDPatrimonio

-(NSString *)description{
    if(self.portador){
        return [NSString stringWithFormat:@"<%@: %u pertence ao %@",self.rotuloPatrimonio,self.valorRevenda,self.portador];
    }else{
        return [NSString stringWithFormat:@"Equipamento sem dono"];
    }
}

//-(NSString *)description{
//    return [NSString stringWithFormat:@"<%@:%u",self.rotuloPatrimonio, self.valorRevenda];
//}

-(void)dealloc{
    NSLog(@"Desalocando: %@",self);
}

@end
