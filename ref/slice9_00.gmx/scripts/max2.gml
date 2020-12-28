var v;
v = argument[0];

for( i=0; i<argument_count; i+=1 )
if( argument[i] > v ) v = argument[i];

return v;
