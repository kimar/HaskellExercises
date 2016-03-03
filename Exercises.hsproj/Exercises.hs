-- Chapter 1
pdct [] = 1
pdct (x:xs) = x * pdct xs

qsortr [] = []
qsortr (x:xs) = qsortr smaller ++ [x] ++ qsortr larger
                where
                  smaller = [a | a<-xs, a>=x]
                  larger = [b | b<-xs, b<x]