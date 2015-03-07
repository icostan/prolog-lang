%
%  tests.pl
%
%  Unit tests.
%

:- begin_tests(conveyor).

:- include('conveyor').

test(conveys) :-
	convey(a1,a2,Duration),
	assertion(Duration == 1).

test(departures) :-
	departure(ua10,a1,Airport),
	assertion(Airport == mia).

test(routes, [nondet]) :-
	route(a1,a4,Duration,Hops),
	assertion(Duration == 3),
	assertion(Hops == [a1,a2,a3]).

:- end_tests(conveyor).