app([], List, List).
app([H|T], List, [H|R]) :-
    app(T, List, R).

reverse([],Result,Result).
reverse([H|T],Acc, Result) :-
    reverse(T,[H|Acc], Result).

reverse(List, Result) :- reverse(List,[],Result).

:- reverse([1, 2, 3], [3, 2, 1]).
