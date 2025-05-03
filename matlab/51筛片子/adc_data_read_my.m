% filepath: /home/shy/AIR/DSIP/matlab/51筛片子/adc_data_read_new.m
function [sfdr1, sfdr2] = adc_data_read_my(filepath, fclk)
    len=8192;
    
    %%%%%%%%%%%%%%%%%%%%configurtion%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    ADC1_raw_data=zeros(4*len,1);
    ADC2_raw_data=zeros(4*len,1);
    ADC3_raw_data=zeros(4*len,1);
    ADC4_raw_data=zeros(4*len,1);
    % --------- read data -------------------------------
    % [fname,path] = uigetfile('.csv','打开文件');
    % fid = fopen([path fname]);
    fid = fopen(filepath);
    data_begin=2;
    for i=1:data_begin
        line=fgetl(fid);
    end
    jj=1;
    for i=1:len
        line=fgetl(fid);
        s_data=regexp(line, ',', 'split');    
        char_data=char(s_data(5));
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
    %   channel 1    
        if (sscanf(char_data(63),'%x'))<8
            ADC1_raw_data(jj)=sscanf(char_data(61:62),'%x')+256*16*abs(8+sscanf(char_data(63),'%x'))+256*sscanf(char_data(64),'%x');
        else
            ADC1_raw_data(jj)=sscanf(char_data(61:62),'%x')+256*16*abs(-8+sscanf(char_data(63),'%x'))+256*sscanf(char_data(64),'%x');
        end
    
    %   channel 2
        if (sscanf(char_data(63-8),'%x'))<8
            ADC2_raw_data(jj)=sscanf(char_data(61-8:62-8),'%x')+256*16*abs(8+sscanf(char_data(63-8),'%x'))+256*sscanf(char_data(64-8),'%x');
        else
            ADC2_raw_data(jj)=sscanf(char_data(61-8:62-8),'%x')+256*16*abs(-8+sscanf(char_data(63-8),'%x'))+256*sscanf(char_data(64-8),'%x');
        end
    
    %   channel 3
        if (sscanf(char_data(63-16),'%x'))<8
            ADC3_raw_data(jj)=sscanf(char_data(61-16:62-16),'%x')+256*16*abs(8+sscanf(char_data(63-16),'%x'))+256*sscanf(char_data(64-16),'%x');
        else
            ADC3_raw_data(jj)=sscanf(char_data(61-16:62-16),'%x')+256*16*abs(-8+sscanf(char_data(63-16),'%x'))+256*sscanf(char_data(64-16),'%x');
        end
    
    %   channel 4
        if (sscanf(char_data(63-24),'%x'))<8
            ADC4_raw_data(jj)=sscanf(char_data(61-24:62-24),'%x')+256*16*abs(8+sscanf(char_data(63-24),'%x'))+256*sscanf(char_data(64-24),'%x');
        else
            ADC4_raw_data(jj)=sscanf(char_data(61-24:62-24),'%x')+256*16*abs(-8+sscanf(char_data(63-24),'%x'))+256*sscanf(char_data(64-24),'%x');
        end
        jj=jj+1;
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        if (sscanf(char_data(63-32),'%x'))<8
            ADC1_raw_data(jj)=sscanf(char_data(61-32:62-32),'%x')+256*16*abs(8+sscanf(char_data(63-32),'%x'))+256*sscanf(char_data(64-32),'%x');
        else
            ADC1_raw_data(jj)=sscanf(char_data(61-32:62-32),'%x')+256*16*abs(-8+sscanf(char_data(63-32),'%x'))+256*sscanf(char_data(64-32),'%x');
        end
    
       if (sscanf(char_data(63-40),'%x'))<8
            ADC2_raw_data(jj)=sscanf(char_data(61-40:62-40),'%x')+256*16*abs(8+sscanf(char_data(63-40),'%x'))+256*sscanf(char_data(64-40),'%x');
       else
            ADC2_raw_data(jj)=sscanf(char_data(61-40:62-40),'%x')+256*16*abs(-8+sscanf(char_data(63-40),'%x'))+256*sscanf(char_data(64-40),'%x');
        end
    
        if (sscanf(char_data(63-48),'%x'))<8
            ADC3_raw_data(jj)=sscanf(char_data(61-48:62-48),'%x')+256*16*abs(8+sscanf(char_data(63-48),'%x'))+256*sscanf(char_data(64-48),'%x');
        else
            ADC3_raw_data(jj)=sscanf(char_data(61-48:62-48),'%x')+256*16*abs(-8+sscanf(char_data(63-48),'%x'))+256*sscanf(char_data(64-48),'%x');
        end
       
        if (sscanf(char_data(63-56),'%x'))<8
            ADC4_raw_data(jj)=sscanf(char_data(61-56:62-56),'%x')+256*16*abs(8+sscanf(char_data(63-56),'%x'))+256*sscanf(char_data(64-56),'%x');
        else
            ADC4_raw_data(jj)=sscanf(char_data(61-56:62-56),'%x')+256*16*abs(-8+sscanf(char_data(63-56),'%x'))+256*sscanf(char_data(64-56),'%x');
        end
        jj=jj+1;   
        
     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
        if (sscanf(char_data(63-4),'%x'))<8
            ADC1_raw_data(jj)=sscanf(char_data(61-4:62-4),'%x')+256*16*abs(8+sscanf(char_data(63-4),'%x'))+256*sscanf(char_data(64-4),'%x');
        else
            ADC1_raw_data(jj)=sscanf(char_data(61-4:62-4),'%x')+256*16*abs(-8+sscanf(char_data(63-4),'%x'))+256*sscanf(char_data(64-4),'%x');
        end
     
        if (sscanf(char_data(63-12),'%x'))<8
            ADC2_raw_data(jj)=sscanf(char_data(61-12:62-12),'%x')+256*16*abs(8+sscanf(char_data(63-12),'%x'))+256*sscanf(char_data(64-12),'%x');
        else
            ADC2_raw_data(jj)=sscanf(char_data(61-12:62-12),'%x')+256*16*abs(-8+sscanf(char_data(63-12),'%x'))+256*sscanf(char_data(64-12),'%x');
        end
      
        if (sscanf(char_data(63-20),'%x'))<8
            ADC3_raw_data(jj)=sscanf(char_data(61-20:62-20),'%x')+256*16*abs(8+sscanf(char_data(63-20),'%x'))+256*sscanf(char_data(64-20),'%x');
        else
            ADC3_raw_data(jj)=sscanf(char_data(61-20:62-20),'%x')+256*16*abs(-8+sscanf(char_data(63-20),'%x'))+256*sscanf(char_data(64-20),'%x');
        end
    
        if (sscanf(char_data(63-28),'%x'))<8
            ADC4_raw_data(jj)=sscanf(char_data(61-28:62-28),'%x')+256*16*abs(8+sscanf(char_data(63-28),'%x'))+256*sscanf(char_data(64-28),'%x');
        else
            ADC4_raw_data(jj)=sscanf(char_data(61-28:62-28),'%x')+256*16*abs(-8+sscanf(char_data(63-28),'%x'))+256*sscanf(char_data(64-28),'%x');
        end
        jj=jj+1;     
        
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        if (sscanf(char_data(63-36),'%x'))<8
            ADC1_raw_data(jj)=sscanf(char_data(61-36:62-36),'%x')+256*16*abs(8+sscanf(char_data(63-36),'%x'))+256*sscanf(char_data(64-36),'%x');
        else
            ADC1_raw_data(jj)=sscanf(char_data(61-36:62-36),'%x')+256*16*abs(-8+sscanf(char_data(63-36),'%x'))+256*sscanf(char_data(64-36),'%x');
        end
    
        if (sscanf(char_data(63-44),'%x'))<8
            ADC2_raw_data(jj)=sscanf(char_data(61-44:62-44),'%x')+256*16*abs(8+sscanf(char_data(63-44),'%x'))+256*sscanf(char_data(64-44),'%x');
        else
            ADC2_raw_data(jj)=sscanf(char_data(61-44:62-44),'%x')+256*16*abs(-8+sscanf(char_data(63-44),'%x'))+256*sscanf(char_data(64-44),'%x');
        end
    
        if (sscanf(char_data(63-52),'%x'))<8
            ADC3_raw_data(jj)=sscanf(char_data(61-52:62-52),'%x')+256*16*abs(8+sscanf(char_data(63-52),'%x'))+256*sscanf(char_data(64-52),'%x');
        else
            ADC3_raw_data(jj)=sscanf(char_data(61-52:62-52),'%x')+256*16*abs(-8+sscanf(char_data(63-52),'%x'))+256*sscanf(char_data(64-52),'%x');
        end
    
        if (sscanf(char_data(63-60),'%x'))<8
            ADC4_raw_data(jj)=sscanf(char_data(61-60:62-60),'%x')+256*16*abs(8+sscanf(char_data(63-60),'%x'))+256*sscanf(char_data(64-60),'%x');
        else
            ADC4_raw_data(jj)=sscanf(char_data(61-60:62-60),'%x')+256*16*abs(-8+sscanf(char_data(63-60),'%x'))+256*sscanf(char_data(64-60),'%x');
        end
        jj=jj+1;    
    end
    
    ADC1=ADC1_raw_data/16;
    ADC2=ADC2_raw_data/16;
    ADC3=ADC3_raw_data/16;
    ADC4=ADC4_raw_data/16;
    
    ADC1_1=ADC1(1:2:end,:);
    ADC2_1=ADC1(2:2:end,:);
    ADC1_2=ADC2(1:2:end,:);
    ADC2_2=ADC2(2:2:end,:);
    ADC1_3=ADC3(1:2:end,:);
    ADC2_3=ADC3(2:2:end,:);
    ADC1_4=ADC4(1:2:end,:);
    ADC2_4=ADC4(2:2:end,:);
    
    
    adc_data_mux=zeros(8*len,1);
    adc_data_mux(1:4:end)=ADC1_1;
    adc_data_mux(2:4:end)=ADC1_2;
    adc_data_mux(3:4:end)=ADC1_3;
    adc_data_mux(4:4:end)=ADC1_4;
    fclk=2.4e9;
    sfdr1 = SFDR_Calc_my(adc_data_mux, fclk);
    % disp(sfdr1);
    
    adc_data_mux=zeros(8*len,1);
    adc_data_mux(1:4:end)=ADC2_1;
    adc_data_mux(2:4:end)=ADC2_2;
    adc_data_mux(3:4:end)=ADC2_3;
    adc_data_mux(4:4:end)=ADC2_4;
    fclk=2.4e9;
    sfdr2 = SFDR_Calc_my(adc_data_mux, fclk);
    % disp(sfdr2);
    
    fclose all;
end