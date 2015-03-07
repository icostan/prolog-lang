% routes
convey(concourse_a_ticketing,a5,5).
convey(a5,baggage_claim,5).
convey(a5,a10,4).
convey(a5,a1,6).
convey(a1,a2,1).
convey(a2,a3,1).
convey(a3,a4,1).
convey(a10,a9,1).
convey(a8,a7,1).
convey(a7,a6,1).

route(From,To,Duration,Hops):-
	convey(From,To,Duration),
	append([],[From],Hops).
route(From,To,Duration,Hops):-
	convey(From,Hop,D1),
	route(Hop,To,D2,H),
	Duration is D1 + D2,
	append([From],H,Hops).

% departures
departure(ua10,a1,mia).
departure(ua11,a1,lax).
departure(ua12,a1,jfk).
departure(ua13,a2,jfk).
departure(ua14,a2,jfk).
departure(ua15,a2,jfk).
departure(ua16,a3,jfk).
departure(ua17,a4,mht).
departure(ua18,a5,lax).

% conveyor system
conveyor(From,Flight,Duration,Hops):-
	departure(Flight,To,_),
	route(From,To,Duration,H),
	append(H,[To],Hops).
