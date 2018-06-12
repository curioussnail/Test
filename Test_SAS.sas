data test;
    set t2;
    where i_e_flag="I";
    flag_zc="1";
    run;
proc sort data=test noprint;
by entry_id;
run;

proc means data=test;
by class;
output out=tsum sum(e)=e;
run;


