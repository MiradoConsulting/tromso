//SinOsc s => dac;
SinOsc s => Envelope e => dac;
s.freq(550);
//1 => s.gain;
e.keyOn();
1000::ms => now;
e.keyOff();
//0 => s.gain;
1000::ms => now;
e.keyOn();
//1 => s.gain;
1000::ms => now;
e.keyOff();
//0 => s.gain;
1000::ms => now;

