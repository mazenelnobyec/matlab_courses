cd c:\voicebox
G = folderFiles('C:\Users\Mazen\Downloads\ShitCarrier2\New folder','*.wav');

path =strcat('C:\Users\Mazen\Downloads\ShitCarrier2\train\yes15.wav');
[A,fs]=audioread(path);
A=A(:,1);
cl=melcepst(A,fs);
test=mean(cl);

for index = 1:22
path =strcat('C:\Users\Mazen\Desktop\New folder\',G(index,:));
[A,fs]=audioread(path);
 A=A(:,1);
cl=melcepst(A,fs);
cll=mean(cl);

C(index,1)=norm(test-cll);
end
classifier=0;
for kind = 0:1
    for count =1:11
        
        C(count,2)=classifier;
    end
    classifier=classifier+1;
end
no=0;
yes=0;
com=0;
finalRes=minK(C(:,1),3)
for limit = 1:3
for counter=1:22
  if(finalRes(limit)==C(counter,1))
  if(C(counter,2)==1)
      no=no+1;
  else if (C(counter,2)==0)
     yes=yes+1;
      end
  end
  end
end
end

if (yes>no)
    disp('Yes')
else if (no>yes)
        disp('No')
    
end
end