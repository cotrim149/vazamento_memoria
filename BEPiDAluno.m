//
//  BEPiDAluno.m
//  vazamento_memoria
//
//  Created by ALS on 02/05/14.
//  Copyright (c) 2014 Cotrim. All rights reserved.
//

#import "BEPiDAluno.h"
#import "BEPiDPatrimonio.h"

@interface BEPiDAluno(){
    NSMutableArray *_patrimonio;
}
@end

@implementation BEPiDAluno

-(void)setPatrimonio:(NSArray *)p{
    _patrimonio = [p mutableCopy];
}

-(NSArray *)patrimonio {
    return [_patrimonio copy];
}

-(void)addPatrimonio:(BEPiDPatrimonio *)p{
    if(!_patrimonio){
        _patrimonio = [[NSMutableArray alloc] init];
    }
    [_patrimonio addObject:p];
p.portador = self; 
}

-(unsigned int)totalPatrimonio{
    unsigned int soma =0;
    for(BEPiDPatrimonio *p in _patrimonio){
        soma += [p valorRevenda];
    }
    
    return soma;
}

-(NSString*) description{
    return [NSString stringWithFormat:@"Aluno %u possui %u em patrimonio",self.matriculaAluno, self.totalPatrimonio];
}

-(void)dealloc{
    NSLog(@"Desalocando: %@",self);
}

@end
