set clock_constraint { \
    name clk \
    module network_top \
    port ap_clk \
    period 100 \
    uncertainty 12.5 \
}

set all_path {}

set false_path {}

