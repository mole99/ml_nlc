<project xmlns="com.autoesl.autopilot.project" name="network" top="network_top">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="">
        <SimFlow askAgain="false" name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../test_data/ideal_chg.h" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../test_data/ideal_dchg.h" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../network_tb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="network/networks/model_post_quant_chg.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="network/networks/model_post_quant_dchg.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="network/network_top.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="network/network_top.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

