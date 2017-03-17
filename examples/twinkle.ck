Mandolin osc => Envelope e => dac;

fun void keyPress(int midi, float on, float off) {
    Std.mtof(midi) => osc.freq;
    osc.noteOn(0.5);
    e.keyOn();
    on::second => now;
    osc.noteOn(0);
    e.keyOff();
    off::second => now;
}

keyPress(55, 0.2, 0.4);
keyPress(55, 0.2, 0.4);

keyPress(62, 0.2, 0.4);
keyPress(62, 0.2, 0.4);

keyPress(64, 0.2, 0.4);
keyPress(64, 0.2, 0.4);

keyPress(62, 0.7, 0.6);

keyPress(60, 0.2, 0.4);
keyPress(60, 0.2, 0.4);

keyPress(59, 0.2, 0.4);
keyPress(59, 0.2, 0.4);

keyPress(57, 0.2, 0.4);
keyPress(57, 0.2, 0.4);

keyPress(55, 0.5, 0.5);
