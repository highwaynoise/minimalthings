<<<"usage: chuck record.ck:tempo:number_of_beat:output_wavfile_name">>>;
<<<"example:chuck record.ck:120:8:section1.wav">>>;
<<<"start palying after the first four beats">>>;


me.dir() +"/../../ck" => string ckdir;


Machine.add(ckdir + "/Metronome.ck");

Machine.add(ckdir + "/looprecorder.ck:"+me.arg(0)+":"+me.arg(1)+":"+me.arg(2));

