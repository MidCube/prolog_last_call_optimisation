len(Xs,L) :- len(Xs,0,L).
len([],Len,Len).
len([_|Xs],T, L) :-
    T1 is T+1,
    len(Xs,T1,L).

generate_list(0, []).
generate_list(N, [N|T]) :-
    M is N-1,
    generate_list(M, T).

test(Size) :- generate_list(Size,List), len(List,Size).

crashGenerate :- test(100000).
crashLen :- test(30000).
