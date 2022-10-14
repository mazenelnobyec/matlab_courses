
cd 'C:\voicebox'
 % directory of the folder, where data files are saved
G=folderFiles('C:\Users\Mazen\Desktop\New folder','*.wav')

for index = 1:22
path =strcat('C:\Users\Mazen\Desktop\New folder\',G(index,:));
[A,fs]=audioread(path);
A=A(:,1);
cl=melcepst(A,fs);
cll=mean(cl)
B(index,:)=[cll]
end

Y=[1 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2 2]
Mdl = fitcknn(B,Y)
