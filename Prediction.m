cd c:\voicebox
path =strcat('C:\Users\Mazen\Desktop\train\yes15.wav');

[A,fs]=audioread(path);

A=A(:,1);
cl=melcepst(A,fs);
cll=mean(cl);
X=cll;
label = predict(Mdl,X)