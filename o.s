#include<stdio.h>
#include<conio.h>
void main()
{
int frag[10],b[10],f[10],i,j,nb,nf,temp,lowest;
static int bf[10],ff[10];
clrscr();
printf("\nEnter the number of blocks: ");
scanf("%d",&nb);
printf("Enter the number of files: ");
scanf("%d",&nf);
printf("\nEnter the size of the blocks:-\n");
for(i=1;i<=nb;i++)
{
printf("Block %d:",i);
scanf("%d",&b[i]);
}
printf("Enter the size of the files:-\n");

for(i=1;i<=nf;i++)
{
printf("File %d:",i);
scanf("%d",&f[i]);
}
for(i=1;i<=nf;i++)
{
for(j=1;j<=nb;j++)
{
if(bf[j]!=1)
{
temp=b[j]-f[i];
if(temp>=0)
if(lowest>temp)
{
ff[i]=j;
lowest=temp;
}
}
}
frag[i]=lowest;
bf[ff[i]]=1;
bf[ff[j]]=1;
lowest=2;
}
printf("\nFile_no \tFile_size \tBlock_no \tBlock_size \tFragment");
for(i=1;i<=nf && ff[i]!=0;i++)
printf("\n%d\t\t%d\t\t%d\t\t%d\t\t%d",i,f[i],ff[i],b[ff[i]],frag[i]);
getch();
}


MVT
#include<stdio.h>
#include<conio.h>
int main()
{
int ms,mp[10],i,temp,n=0;
char ch='y';
printf("enter the total memory available:");
scanf("%d",&ms);
temp=ms;
for(i=0;ch='y';i++,n++)
{
printf("enter memory required for process %d",i+1);
scanf("%d",&mp[i]);
if(mp[i]<=temp)
{
printf("memory is allocated for process %d",i+1);
temp=temp-mp[i];
}
else
{
printf("memory is full");
break;
}
printf("do you want to continue(y/n)");
scanf("%c",&ch);
}
printf("total memory available %d",ms);
printf("\n\t process\t\n memory allocated");
for(i=0;i<n;i++)
printf("\n\t%d\t\t%d",i+1,mp[i]);
printf("total memory allocated is %d",ms-temp);
printf("total external fragmentation is %d",temp);
return 0;
}

MFT
#include<stdio.h>
#include<conio.h>
int main()
{
clrscr();
int ms,bs,nob,ef,n,np[10],tif=0;
int i,p=0;
printf("enter total memory variable");
scanf("%d",&ms);
printf("enter the block size");
scanf("%d",&bs);
nob=ms/bs;
ef=ms-nob*bs;
printf("enter the number of process");
scanf("%d",&n);
for(i=0;i<n;i++)
{
printf("enter memory require for each process:%d",i+1);
scanf("%d",&np[i]);
}
printf("number of blocks available in memory:%d",nob);
printf("\n\n process\t memory requirement\t allocated\t internal fregmentation\t");
for(i=0;i<n&&p<nob;i++)
{
printf("\n%d\t%d\t",i+1,np[i]);
if(np[i]>bs)
printf("\t\tno\t\t");
else
{
printf("\t\tyes\t%d",bs-np[i]);
tif=tif+bs-np[i];
p++;
}
}
if(i<n)
printf("memory is fill,remaining process cannot be allocated");
printf("total internal fragmentation is %d",tif);
printf("total external fragmentation is %d",ef);
getch();
return 0;
}


