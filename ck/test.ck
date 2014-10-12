if(me.args()<1)
	<<<"usage:chuck test.ck:classname">>>;
<<<me.dir()>>>;
me.arg(0)=>string classname;

Machine.add(me.dir()+"/"+classname+".ck");

Machine.add(me.dir()+"/"+"test"+classname+".ck");
