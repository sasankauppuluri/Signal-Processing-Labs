function y= synthesizer(A, f_notes,P,adsr,td_notes,Fs)
y = [];

    
for ii = 1:length(f_notes)
  
  adsr1 = adsr ;
  adsr1(1) = td_notes(ii)*adsr(1);  
  adsr1(2) = td_notes(ii)*adsr(2);
  adsr1(4) = td_notes(ii)*adsr(4);
  adsr1(5) = td_notes(ii)*adsr(5);
 
  [t_env,env] = envelope(adsr1(1),adsr1(2),adsr1(3),adsr1(4),adsr1(5),Fs);
 xt = harmonics(A,f_notes(ii),P,td_notes(ii),Fs);
 disp(length(xt));
 disp(length(env));
 xte = xt.* env;
 
 y= [y, xte];
end
end