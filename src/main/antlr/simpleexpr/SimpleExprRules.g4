lexer grammar SimpleExprRules;

SEMI : ';' ;
ASSIGN : '=' ;
IF : 'if' ;
MUL : '*' ;
DIV : '/' ;
ADD : '+' ;
SUB : '-' ;
LPAREN : '(' ;
RPAREN : ')' ;
ID : (LETTER | '_') (LETTER | DIGHT | '_') * ;
INT : '0' | [1-9]DIGHT* ;
FLOAT : INT '.' DIGHT*
      | '.' DIGHT+
      ;
WS : [ \t\r\n]+ -> skip ;

//SL_COMMENT : '//' .*? '\n' -> skip;
SL_COMMENT : '//' ~[\n]* '\n' -> skip ;
DOC_COMMENT : '/**' .*? '*/' -> skip ;
ML_COMMENT : '/*' .*? '*/' -> skip ;
fragment DIGHT : [0-9] ;
fragment LETTER : [a-zA-Z] ;