N=5;
P=zeros(1, N);
Fs=10000;
for(k=1:N)
A(k)=1/k*k;
end
 F_notes = 50:5:100;
 for(k=1:length(F_notes))
 td_notes(k)=1;
 end
 adsr=[0.2, 0.2, 0.7, 0.4, 0.2];
 y=synthesizer(A,F_notes, P, adsr, td_notes, Fs);
 %soundsc(y, Fs);
 
 
 %-------------------
 F_notes = 100:-10:40;
 for(k=1:length(F_notes))
 td_notes(k)=1;
 end
 adsr=[0.2, 0.2, 0.7, 0.4, 0.2];
 y=synthesizer(A,F_notes, P, adsr, td_notes, Fs);
 %soundsc(y, Fs);
 
 %-----------------------
 
 M = 5; 
 F_notes = 50 + 50*rand(1,M);
 td_notes = 0.5 + rand(1,M);
  adsr=[0.2, 0.2, 0.7, 0.4, 0.2];
 y=synthesizer(A, F_notes, P, adsr, td_notes, Fs);
 %soundsc(y, Fs);
 %------------------------
 
 F_notes(1)=240;
 F_notes(2)=240;
 F_notes(3)=250;
 F_notes(4)=250;
 F_notes(5)=240;
 F_notes(6)=250;
 F_notes(7)=240;
 F_notes(8)=250;
 F_notes(9)=240;
 F_notes(10)=240;
 F_notes(11)=250;
 F_notes(12)=250;
 F_notes(13)=300;
 F_notes(14)=300;
 F_notes(15)=320;
 F_notes(16)=320;
 F_notes(17)=250;
 F_notes(18)=250;
 F_notes(19)=300;
 F_notes(20)=300;
 F_notes(21)=250;
 F_notes(22)=300;
 F_notes(23)=250;
 F_notes(24)=300;
 F_notes(25)=250;
 F_notes(26)=250;
 F_notes(27)=300;
 F_notes(28)=300;
 F_notes(29)=320;
 F_notes(30)=320;
 F_notes(31)=350;
 F_notes(32)=350;
 
 
 
 
 for(k=1:length(F_notes))
 td_notes(k)=0.5;
 end
 adsr=[0.2, 0.2, 0.7, 0.4, 0.2];
 y=synthesizer(A, F_notes, P, adsr, td_notes, Fs);
 soundsc(y, Fs);
 audiowrite("musicnote.wav", y, Fs);