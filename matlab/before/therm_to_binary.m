function T_MDAC=therm_to_binary(therm_MDAC,i)   
    if (therm_MDAC==0)
        T_MDAC(1)=0;T_MDAC(2)=0;T_MDAC(3)=0;T_MDAC(4)=0;T_MDAC(5)=0;T_MDAC(6)=0;
    elseif (therm_MDAC==1)
        T_MDAC(1)=1;T_MDAC(2)=0;T_MDAC(3)=0;T_MDAC(4)=0;T_MDAC(5)=0;T_MDAC(6)=0;
            elseif (therm_MDAC==2)
                T_MDAC(1)=1;T_MDAC(2)=1;T_MDAC(3)=0;T_MDAC(4)=0;T_MDAC(5)=0;T_MDAC(6)=0;
                    elseif (therm_MDAC==3)
                        T_MDAC(1)=1;T_MDAC(2)=1;T_MDAC(3)=1;T_MDAC(4)=0;T_MDAC(5)=0;T_MDAC(6)=0;
                            elseif (therm_MDAC==4)
                                T_MDAC(1)=1;T_MDAC(2)=1;T_MDAC(3)=1;T_MDAC(4)=1;T_MDAC(5)=0;T_MDAC(6)=0;
                                    elseif (therm_MDAC==5)
                                        T_MDAC(1)=1;T_MDAC(2)=1;T_MDAC(3)=1;T_MDAC(4)=1;T_MDAC(5)=1;T_MDAC(6)=0;
                                            elseif (therm_MDAC==6)
                                                T_MDAC(1)=1;T_MDAC(2)=1;T_MDAC(3)=1;T_MDAC(4)=1;T_MDAC(5)=1;T_MDAC(6)=1;
    else
        T_MDAC(1)=0;T_MDAC(2)=0;T_MDAC(3)=0;T_MDAC(4)=0;T_MDAC(5)=0;T_MDAC(6)=0;
    end
end