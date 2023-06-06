import("stdfaust.lib");

FC = hslider("Freq", 1000, 20, 12000, 1);

filter_hpf = fi.highpass(6,FC);

process = _: filter_hpf: _;

