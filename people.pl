woman(mia). 
woman(jody). 
woman(yolanda).

happy(yolanda). 
listens2Music(mia). 
listens2Music(yolanda):-  happy(yolanda). 
playsAirGuitar(mia):-  listens2Music(mia). 
playsAirGuitar(yolanda):-  listens2Music(yolanda).

loves(vincent,mia). 
loves(marsellus,mia). 
loves(pumpkin,honey_bunny). 
loves(honey_bunny,pumpkin). 
    
jealous(X,Y):-  loves(X,Z),  loves(Y,Z), =(X,Y).