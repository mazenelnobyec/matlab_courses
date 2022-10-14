cd c:\voicebox
G = folderFiles('C:\Users\Mazen\Downloads\ShitCarrier2\New folder','*.wav');
path =strcat('C:\Users\Mazen\Downloads\ShitCarrier2\New folder\yes10.wav');
[A,fs]=audioread(path);
A=A(:,1);
cl=melcepst(A,fs);
test=mean(cl);

for index = 1:22
path =strcat('C:\Users\Mazen\Downloads\ShitCarrier2\New folder\',G(index,:));
[A,fs]=audioread(path);
 A=A(:,1);
cl=melcepst(A,fs);
cll=mean(cl);
C(index,1)=norm(test-cll);
D(index,1)=norm(cll-0);
end
classUse=D;
mu1 = mean(classUse(0:11));
mu2 = mean(class2);
