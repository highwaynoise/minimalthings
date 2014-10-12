

SndBuf s1;
"section1.wav" => s1.read;
LiSa l1 => Pan2 pan1 => dac;

s1.samples() * 1::samp => l1.duration;
for (0=>int i;i<s1.samples();i++)
{
	l1.valueAt(s1.valueAt(i),i::samp);
}
1=>l1.play;
1.=>l1.rate;
l1.duration()=>now;
while(true)
{
	Math.random2f(-1.0,1.0)=>pan1.pan;
	Math.random2f(0.6,2.5)=>l1.rate; 
	l1.duration()/l1.rate()=>now;	
}



