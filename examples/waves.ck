//SinOsc osc => dac;
//SqrOsc osc => dac;
//SawOsc osc => dac;
TriOsc osc => dac;

while (true)
{
    // randomly choose frequency from 30 to 1000
    Math.random2(30,1000) => osc.freq;
    500::ms => now;
}