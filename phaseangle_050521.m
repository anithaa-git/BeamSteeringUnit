% array factor;ant8.m
% N rows and M columns planar
clear all

%--------------------------------------------------------------------------
% Inputs 
%--------------------------------------------------------------------------
tetas=0;%[0,10,20,30,35,38,40,42,45];%0,20,30,40,45%scan angle elevation
phis=0;%[0,20,40,45];%0,22.5,45%scan angle azimuth
f=6;%6,8,10,12,14,16,18
%--------------------------------------------------------------------------
bits=5;    % No of bits
quant=11.25;%360/(2^x-1);
M=5; %No of elements=MxN
N=5; % No of Boards
a=ones(M,N);

d=0.95;


for n=1:N   % Boards
    for f=6:2:18    %frequency
        lam=30/f;
        dxlam=d/lam;
        dylam=dxlam;
        dlam=dxlam;
        
        for m=1:M   % elements
           
            %--------------------------------------------------------------------------
            %  Generating (nxfxm) LUT files - file consists of phase values
            %  for phis= 0 (theta = 0 to 45 followed by 18
            %  zeros),phis=5(theta = 0 to 45 followed by 18 zeros),....
            %  phis=45(theta = 0 to 45 followed by 18 zeros)
            %--------------------------------------------------------------------------
    
            filename='lut';
            fn=sprintf ( '%s_b%if%i_e%i.mem', filename,n,f,m);
            fx=fopen(fn,'w');
             
            for phis=0:5:45%[0,20,40,45]
            
                for tetas=0:1:45%[0,10,20,30,35,38,40,42,45]
                    phisr=phis*pi/180;
                    tetasr=tetas*pi/180;                        
            %--------------------------------------------------------------------------
            %  Programming array factor for MxN elements
            %--------------------------------------------------------------------------
                    delx=2*pi*dxlam*sin(tetasr)*cos(phisr);
                    dely=2*pi*dylam*sin(tetasr)*sin(phisr);
                    eph= (m-1)*delx+(n-1)*dely;
                    ephd=eph*180/pi;
                    x=ephd/360;
                    y=fix(x);
                    a=ephd-y*360;
                    b=round(a,2);
                    y=(b/quant);
                    f_bin=dec2bin(y,bits);
                    fprintf(fx,'%s\n',f_bin);
                end
                 for l=1:1:18
                     fprintf(fx,'00000\n');
                 end
            end
          
            fclose(fx);
        end
         %--------------------------------------------------------------------------
         %  Generating n x f CSV file  file consists of phase values of m columns antennas 
         %  for phis= [0,20,40,45], tetasf=[0,10,20,30,35,38,40,42,45]
         %  
         %--------------------------------------------------------------------------
        
        bf=zeros(13,1); f_binf=strings(13,1);
        phisrf=zeros(4,1);tetasrf=zeros(1,9);
        k=0;
                
              
         for mf=1:M   % elements
             i=0;k=k+1;
             T=table(zeros(36,1),zeros(36,1),zeros(36,1),zeros(36,1),strings(36,1),'VariableNames',{'Phi','Theta','Phase', 'Observed','Binary'});
             
             
            for phisf=[0,20,40,45]
                i=i+1; j=0; 
               for tetasf=[0,10,20,30,35,38,40,42,45]
                    j=j+1;p=(i-1)*9+j;
                    phisrf(i)=phisf*pi/180;
                    tetasrf(j)=tetasf*pi/180;                        
            %--------------------------------------------------------------------------
            %  Programming array factor for MxN elements
            %--------------------------------------------------------------------------
                    delxf=2*pi*dxlam*sin(tetasrf(j))*cos(phisrf(i));
                    delyf=2*pi*dylam*sin(tetasrf(j))*sin(phisrf(i));
                    ephf= (mf-1)*delxf+(n-1)*delyf;
                    ephdf=ephf*180/pi;
                    xf=ephdf/360;
                    yf=fix(xf);
                    af=ephdf-yf*360;
                    bf=round(af,2);
                    y1f=(bf/quant);
                    f_binf=dec2bin(y1f,bits);
                    T.Phi(p)=phisf;T.Theta(p)=tetasf;T.Phase(p)=bf;T.Binary(p)=f_binf;
               end
                  
            end
                  fnx=sprintf ('B%iF%iE%i.csv', n,f,mf);
                  writetable(T,fnx);
                  csv1(k,:) = strsplit(fileread(fnx));
                  delete(fnx);
                  
         end
         
           csvcat = strcat(csv1(1,:), ', ', csv1(2,:),', ',csv1(3,:), ', ', csv1(4,:), ', ', csv1(5,:)); 
           csvcat(2:end+1)=csvcat;
           csvcat(1)={'Column1, , , , ,Column2, , , , ,Column3, , , , ,Column4, , , , ,Column5, , , , ,'};
            ffx=sprintf ('B%iF%i.csv', n,f);
            ffid = fopen(ffx, 'W');
             fprintf(ffid,'%s\n', csvcat{:});
             fclose(ffid);
    end
    fclose('all');
end
                    


