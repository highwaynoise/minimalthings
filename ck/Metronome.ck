public class Metronome
{
	dur durperbeat;
	SndBuf m;
	
	fun void set(int tempo_)
	{
		(60.0/tempo_)::second => durperbeat;
		m=>dac;
		me.dir() + "/metronome-clave-hoch.wav" => m.read;
	}

	fun void start()
	{
		while(true)
		{
			0=>m.pos;
			1.0=>m.play;
			durperbeat=>now;
		}
	}

	
}
