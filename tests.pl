%
%  tests.pl
%

:- begin_tests(conveyor).
:- include('conveyor').

test(convey):-
	convey(a1,a2,Duration),
	assertion(Duration == 1).

test(departure) :-
	departure(ua10,a1,Airport),
	assertion(Airport == mia).

test(route, all(Hops == [[a1,a2,a3]])):-
	route(a1,a4,Duration,Hops),
	assertion(Duration == 3).
% TODO: check Hops type
test(conveyor, all(Hops == [[concourse_a_ticketing,a5,a1]])):-
	conveyor(concourse_a_ticketing,ua10,Duration,Hops),
	assertion(Duration == 11).
	
:- end_tests(conveyor).


:- begin_tests(people).
:- include('people').

test(loves, all(W == [vincent,marsellus])):-
	loves(W,mia).

test(jealous):-
	jealous(vincent,marsellus).

:- end_tests(people).
