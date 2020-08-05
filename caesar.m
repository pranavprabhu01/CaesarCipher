function ans=caesar(str,num)
    [row,col]=size(str);              %Size of the string
    code=double(str);                 %Convert the string to double
    maxcol=1;                         %Varible for column size of ascii array
    alphshift=0;                      %Varible for shift req. in ascii array
    temp=0;                           %Temporary array
    for i=32:126                      %Filling ascii array
        ascii(1,maxcol)=i;
        maxcol=maxcol+1;
    end
    
  for i=1:col                         %Performing Caesar shift

          alphshift=code(row,i)-32;         
          temp=circshift(ascii,-alphshift);
          temp=circshift(temp,-num);
          code(row,i)=temp(1,1);
          temp=0;
  end
    ans= char(code);                  %Returning the coded/decoded string
end