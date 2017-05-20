import noc_params::*;

interface vc_allocator2speculative_switch_allocator;

    logic [VC_SIZE-1:0] vc_new [PORT_NUM-1:0] [VC_NUM-1:0];
    logic [VC_NUM-1:0] vc_valid [PORT_NUM-1:0];

    modport vc_allocator (
        output vc_new,
        output vc_valid
    );

    modport speculative_switch_allocator (
        input vc_new,
        input vc_valid
    );

endinterface