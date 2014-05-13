//
//  main.m
//  vazamento_memoria
//
//  Created by ALS on 02/05/14.
//  Copyright (c) 2014 Cotrim. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "BEPiDAluno.h"
#import "BEPiDPatrimonio.h"

int main(int argc, char *argv[])
{

    NSMutableArray* alunos = [[NSMutableArray alloc] init];
    
    for(int i=0;i<10;i++){
        BEPiDAluno *aluno = [[BEPiDAluno alloc] init];
        aluno.matriculaAluno =i;
        [alunos addObject:aluno];
    }
    
    for(int i=0; i<10;i++){
        BEPiDPatrimonio *patrimonio = [[BEPiDPatrimonio alloc] init];
        
        NSString *rotulo = [NSString stringWithFormat:@"Mackbook %d",i];
        patrimonio.rotuloPatrimonio = rotulo;
        patrimonio.valorRevenda = 350 + i*17;
        
        NSUInteger randomIndice = arc4random() % [alunos count];
        
        BEPiDAluno *randomAluno = [alunos objectAtIndex:randomIndice];
        
        [randomAluno addPatrimonio:patrimonio];
    }
    
    NSLog(@"Alunos: %@",alunos);
    NSLog(@"Removendo um aluno");
    [alunos removeObjectAtIndex:5];
    NSLog(@"Removendo array");
    alunos = nil;
    sleep(100);
    return NSApplicationMain(argc, (const char **)argv);
}
