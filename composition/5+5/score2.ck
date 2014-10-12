
SndBuf s1;
"section1.wav" => s1.read;
LiSa l1 => Pan2 pan1 => dac;

s1.samples() * 1::samp => l1.duration;
for (0=>int i;i<s1.samples();i++)
{
	l1.valueAt(s1.valueAt(i),i::samp);
}

2=>l1.sync;
SinOsc tracker => l1;
Step off => l1;

0.1=>tracker.freq;

l1.duration()/4::samp=>tracker.gain;
l1.duration()/2::samp=>off.next;

1 => l1.play;
0.5=> l1.gain;

while(true)
{
		Math.random2f(0.05,0.4)=>tracker.freq;
		l1.duration()=>now;
}

