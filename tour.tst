(unwatch all)
(clear)
(setgen 1)
(load tour.clp)
(reset)
(open "testData.csv" testdata "r")
(dribble-on "Actual//tour.out")
(run)
(dribble-off)
(clear)
(open "Results//tour.rsl" tour "w")
(load "compline.clp")
(printout tour "tour.clp differences are as follows:" crlf)
(compare-files "Expected//tour.out" "Actual//tour.out" tour)
(close testdata)
(close tour)