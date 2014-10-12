// record a reusable and loopable section
// input: 	tempo(beat per minute)   
//			section length(number of beat) 
//			output wavfile name

if (me.args()<3)
{
	<<<"usage:chuck looprecorder.ck:tempo(beat per minute):section length(number of beat):output wavfile name">>>;
	me.exit();
}


me.arg(0) =>Std.atoi => int tempo;

 (60.0/tempo)::second =>  dur durperbeat ;

Machine.add(me.dir() + "/Metronome.ck");
Metronome m;
tempo => m.set;
spork ~ m.start();


me.arg(1) => Std.atoi => int nbeat;
4*durperbeat=>now;

adc => WvOut w => blackhole;

me.arg(2) => w.wavFilename;


(nbeat)*durperbeat=>now;

w.closeFile();

<<<"written to " + me.arg(2) + "!">>>;
<<<"done!">>>;

