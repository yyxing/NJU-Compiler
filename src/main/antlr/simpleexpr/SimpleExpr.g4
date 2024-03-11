grammar SimpleExpr;

import SimpleExprRules;

prog : stat* EOF ;

stat : expr ';'
     | ID '=' expr ';'
     | 'if' expr ';'
     ;

expr : expr ('*' | '/') expr
     | expr ('+' | '-') expr
     | '(' expr ')'
     | ID
     | INT
     | FLOAT
     ;



