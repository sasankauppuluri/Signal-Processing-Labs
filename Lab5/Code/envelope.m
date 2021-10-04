
function [t_env,env]=envelope(a,d,s,sd,r,fs)
        
tattack=0:1/fs:a;
env1=(1/a)*tattack;
t_env=tattack;

tdecay=(t_env(length(t_env))+1/fs):1/fs:a+d; 
env2= 1+((s-1)*(tdecay-a)/d);
t_env=[t_env,tdecay];

tsustain=t_env(length(t_env))+1/fs: 1/fs: a+d+sd;
env3=s + (tsustain-tsustain);
t_env=[t_env,tsustain];

trelease=t_env(length(t_env))+1/fs: 1/fs : a+d+sd+r;
env4= -s/r*(trelease-a-d-sd-r);
       
env=[env1,env2,env3,env4];
t_env=[t_env,trelease];
end
