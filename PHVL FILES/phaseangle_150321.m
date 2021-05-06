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
lam=30/f;
dxlam=d/lam;
dylam=dxlam;
dlam=dxlam;

% phisr=phis*pi/180;
% tetasr=tetas*pi/180;
% % 
% %--------------------------------------------------------------------------
% %  Programming array factor for MxN elements
% %--------------------------------------------------------------------------
% 
% delx=2*pi*dxlam*sin(tetasr)*cos(phisr);
% dely=2*pi*dylam*sin(tetasr)*sin(phisr);
% 
% %--------------------------------------------------------------------------
% %  Element phases
% %--------------------------------------------------------------------------
% for n=1:N
% for m=1:M
%     eph(m,n)= (m-1)*delx+(n-1)*dely;
% end
% end
% ephd=eph*180/pi;
% %--------------------------------------------------------------------------
%  
% disp(ephd);
% x=ephd/360;
% y=fix(x);
% a=ephd-y*360;
% b=round(a);
% disp(b);
%  



for n=1:N
    for f=6:2:18
        for m=1:M
            lam=30/f;
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
                    b=round(a);
                    y=(ephd/quant);
                    f_bin=dec2bin(y,bits);
                    fprintf(fx,'%s\n',f_bin);
                end
                 for l=1:1:18
                     fprintf(fx,'00000\n');
                 end
            end
          
            fclose(fx);
        end
    end
end
                    
    
    %--------------------------------------------------------------------------

   
    %   y=11.25/11.25
    
    %         f_binx=f_bin(:,2:x+1);
    
    % fprintf(fx,'%s\n',f_bin);
    %display(delta);
    
     
 
 


