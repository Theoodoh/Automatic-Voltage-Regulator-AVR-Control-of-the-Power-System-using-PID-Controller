
function [lb,ub,dim,fobj] = Get_Functions_details(KK)
n1=5;
switch KK
    case 'F1'
        fobj = @F1;
        lb=0; 0; 0.01;
        ub=2.5; 1.5; 1.5;
        dim=n1;              
end
end
% F1
function cost = F1(KK)
assignin('base','KK',KK);
sim('AVR_PID.slx');
cost= ITAE(length(ITAE));
end