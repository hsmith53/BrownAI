servesAll(american, [salad, steak, sandwiches, burgers, fried_chicken]).
servesAll(burger_place, [burgers, fries, onion_rings]).
servesAll(chinese, [eggroles, rice, shrimp, soup, noodles]).
servesAll(indian, [papadam, bagan_bharta, rice, tandoori, rice]).
servesAll(italian, [salad, pasta, cioppino, snapper, bread, garlic_bread]).
servesAll(japanese, [sashimi, rice, tempura, noodles]).
servesAll(mediterranean, [gyros, hummus, pita, falafel]).
servesAll(mexican, [tacos, beans, rice, enchiladas, fish_tacos]).
servesAll(pizza_place, [pizza, salad, garlic_bread]).
servesAll(thai, [rice, noodles, larb, pad_thai]).

dishAll(vegetarian, [beans, bagan_bharta, enchiladas, falafel, hummus, pizza, salad, soup, tempura, onion_rings]).
dishAll(meat, [burgers, enchiladas, gyros, pad_thai, pizza, steak, sandwiches, fried_chicken, tacos, tandoori, larb]).
dishAll(seafood, [snapper, cioppino, sashimi, shrimp, clams, fish_tacos, tempura]).
dishAll(starch, [naan, papadam, bread, rice, noodles, pita, garlic_bread, pasta, fries]).

cuisine(yans, chinese, thayer_street).
cuisine(pizza_marvin, pizza_place, fox_point).
cuisine(bajas, mexican, thayer_street).
cuisine(andreas, mediterranean, thayer_street).
cuisine(chinatown, chinese, thayer_street).
cuisine(kabob_n_curry, indian, thayer_street).
cuisine(waterman_grille, american, wayland).
cuisine(dolores, mexican, fox_point).
cuisine(tallulahs, mexican, fox_point).
cuisine(red_stripe, american, wayland).
cuisine(pasta_beach, italian, wayland).
cuisine(haruki, japanese, wayland).
cuisine(heng, thai, thayer_street).
cuisine(mikes, pizza_place, thayer_street).
cuisine(east_side_pockets, mediterranean, thayer_street).
cuisine(bees, thai, fox_point).
cuisine(shake_shack, burger_place, thayer_street).
cuisine(al_forno, italian, fox_point).
cuisine(lims, thai, wayland).

locate(fox_point, [pizza_marvin, dolores, tallulahs, bees, al_forno]).

location(Location, RestName) :-
    locate(Location, RestNames), 
    member(RestName, RestNames).

vegetarianRest(vegetarian, [yans, pizza_marvin, bajas, andreas, chinatown, kabob_n_curry, waterman_grille, dolores, tallulahs, red_stripe, pasta_beach, haruki, heng, mikes, east_side_pockets, bees, shake_shack, al_forno, lims]).

cuisine_to_rest(Type, Rest) :-
    vegetarianRest(Type, Restaurants),
    member(Rest, Restaurants).

dish_to_rest(DishType, X):-
    location(fox_point, X),
    cuisine_to_rest(DishType, X).

vegetarian(X, Dish):-
    dish(starch, Dish);
    dish(vegetarian, Dish).
    
dish(Type, Dishes) :-
    dishAll(Type, Dishes),
    member(Dish, Dishes).

serves(Kind, Dish) :-
    servesAll(Kind, Dishes), 
    member(Dish, Dishes).

isVegetarian(Dish) :-
    starch(Dish);
    dish(vegetarian, Dish) ->
        true
    ;
        false.

locationOf(RestName, DishType, Location):-
    location(Location, RestName),
    dishType().




/*1. cuisine(X,_,wayland)
2. cuisine(X,italian,_)
3. serves(X, snapper)
4. serves(X, rice)
5. dish_to_rest(vegetarian, X)
*/






    





    



