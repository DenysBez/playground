//Shellsort is similar to the insertion sort and it exchanges elements that are far apart during the first iterations.
//It uses on of the gap algorithms to calculate distance between elements and 
//eventually it sorts list with the gap equals to one which is the same as insertion sort.

swap:{[ilist;aIdx;bIdx]
    if[count[ilist] >= 2;
        [tmp:ilist[aIdx];
         ilist[aIdx]:ilist[bIdx];
         ilist[bIdx]:tmp;
        ]];
    :ilist;
}

shellSort:{[ilist]
    incr: floor (count[ilist] % 2);
    
    while[incr > 0;
            i:incr;
            while[i < count[ilist];
                     j:i;
                     while[(j > 0) and (ilist[j] < ilist[j-i]);
                           ilist:swap[ilist;i;(i-j)];
                     j-:i];
                  i+:incr];
            $[incr=2;incr:1;incr:floor (incr * (5.0 % 11))];
         ];

    :ilist;
};
