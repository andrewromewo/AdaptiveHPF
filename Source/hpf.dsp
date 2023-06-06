import("stdfaust.lib");

FC = hslider("Freq", 1000, 20, 12000, 1);

filter_hpf = fi.highpass(6,FC);
filter_lpf = fi.lowpass(6,18000);

process = _: filter_hpf: filter_lpf : _;

