SinOsc s => dac;
100.0 => float freq;
1 => int dir;


while (true) {
    freq => s.freq;
    500::ms => now;
    50.0 * dir + freq => freq;
    if (freq == 1000) {
        -1 => dir;
    }
    if (freq == 100) {
        1 => dir;
    }
}
