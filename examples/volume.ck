SinOsc s => dac;
s.freq(200);
s.gain(0);

for (0 => int i; i < 100; i++)
{
  s.gain(i * .01);
  20::ms => now;
}