<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2(31:0)" />
        <signal name="XLXN_9(31:0)" />
        <signal name="XLXN_12(31:0)" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_25(3:0)" />
        <signal name="XLXN_26(1:0)" />
        <signal name="XLXN_29(3:0)" />
        <signal name="XLXN_32" />
        <signal name="XLXN_34" />
        <signal name="XLXN_38" />
        <signal name="XLXN_41" />
        <signal name="XLXN_37" />
        <signal name="XLXN_55(31:0)" />
        <signal name="XLXN_56(31:0)" />
        <signal name="XLXN_57(31:0)" />
        <signal name="XLXN_58(31:0)" />
        <signal name="XLXN_61(31:0)" />
        <signal name="XLXN_62(31:0)" />
        <signal name="XLXN_63(31:0)" />
        <signal name="XLXN_64(31:0)" />
        <signal name="XLXN_65(31:0)" />
        <signal name="XLXN_66(31:0)" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <blockdef name="ALU">
            <timestamp>2014-6-21T19:39:35</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="0" y="212" height="24" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <rect width="64" x="0" y="276" height="24" />
            <line x2="0" y1="288" y2="288" x1="64" />
            <rect width="64" x="368" y="148" height="24" />
            <line x2="432" y1="160" y2="160" x1="368" />
            <rect width="64" x="368" y="212" height="24" />
            <line x2="432" y1="224" y2="224" x1="368" />
            <rect width="64" x="368" y="276" height="24" />
            <line x2="432" y1="288" y2="288" x1="368" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <rect width="304" x="64" y="-640" height="960" />
        </blockdef>
        <blockdef name="BinMem">
            <timestamp>2014-6-21T19:24:21</timestamp>
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-128" height="256" />
        </blockdef>
        <blockdef name="Comparator">
            <timestamp>2014-6-21T21:45:28</timestamp>
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="256" x="64" y="-384" height="448" />
        </blockdef>
        <blockdef name="Controller">
            <timestamp>2014-6-21T22:2:32</timestamp>
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-320" height="640" />
        </blockdef>
        <blockdef name="register_file">
            <timestamp>2014-6-21T22:2:54</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-448" height="512" />
        </blockdef>
        <block symbolname="ALU" name="XLXI_1">
            <blockpin signalname="XLXN_38" name="rst" />
            <blockpin signalname="XLXN_37" name="clk" />
            <blockpin signalname="XLXN_41" name="en" />
            <blockpin signalname="XLXN_1" name="mu_in" />
            <blockpin signalname="XLXN_25(3:0)" name="i(3:0)" />
            <blockpin signalname="XLXN_26(1:0)" name="m(1:0)" />
            <blockpin signalname="XLXN_2(31:0)" name="x_in(31:0)" />
            <blockpin signalname="XLXN_58(31:0)" name="y_in(31:0)" />
            <blockpin signalname="XLXN_57(31:0)" name="z_in(31:0)" />
            <blockpin signalname="XLXN_9(31:0)" name="theta(31:0)" />
            <blockpin signalname="XLXN_67" name="done" />
            <blockpin signalname="XLXN_12(31:0)" name="x_out(31:0)" />
            <blockpin signalname="XLXN_55(31:0)" name="y_out(31:0)" />
            <blockpin signalname="XLXN_56(31:0)" name="z_out(31:0)" />
        </block>
        <block symbolname="BinMem" name="XLXI_2">
            <blockpin signalname="XLXN_25(3:0)" name="i(3:0)" />
            <blockpin signalname="XLXN_26(1:0)" name="mode(1:0)" />
            <blockpin signalname="XLXN_9(31:0)" name="data(31:0)" />
            <blockpin signalname="XLXN_37" name="CLK" />
        </block>
        <block symbolname="Comparator" name="XLXI_3">
            <blockpin signalname="XLXN_37" name="clk" />
            <blockpin signalname="XLXN_34" name="OperationSelect" />
            <blockpin signalname="XLXN_57(31:0)" name="Zi(31:0)" />
            <blockpin signalname="XLXN_58(31:0)" name="Yi(31:0)" />
            <blockpin signalname="XLXN_1" name="Output" />
        </block>
        <block symbolname="Controller" name="XLXI_4">
            <blockpin signalname="XLXN_32" name="start" />
            <blockpin signalname="XLXN_38" name="rst" />
            <blockpin signalname="XLXN_37" name="clk" />
            <blockpin signalname="XLXN_29(3:0)" name="code(3:0)" />
            <blockpin signalname="XLXN_41" name="enable" />
            <blockpin signalname="XLXN_15" name="reg_wr" />
            <blockpin signalname="XLXN_16" name="reg_rd" />
            <blockpin signalname="XLXN_34" name="op" />
            <blockpin signalname="XLXN_26(1:0)" name="m(1:0)" />
            <blockpin signalname="XLXN_25(3:0)" name="i(3:0)" />
            <blockpin signalname="XLXN_67" name="alu_done" />
            <blockpin signalname="XLXN_68" name="reg_done" />
        </block>
        <block symbolname="register_file" name="XLXI_5">
            <blockpin signalname="XLXN_15" name="RD" />
            <blockpin signalname="XLXN_16" name="WR" />
            <blockpin signalname="XLXN_37" name="CLK" />
            <blockpin signalname="XLXN_38" name="RST" />
            <blockpin signalname="XLXN_12(31:0)" name="x_in(31:0)" />
            <blockpin signalname="XLXN_55(31:0)" name="y_in(31:0)" />
            <blockpin signalname="XLXN_56(31:0)" name="z_in(31:0)" />
            <blockpin signalname="XLXN_2(31:0)" name="x_out(31:0)" />
            <blockpin signalname="XLXN_58(31:0)" name="y_out(31:0)" />
            <blockpin signalname="XLXN_57(31:0)" name="z_out(31:0)" />
            <blockpin signalname="XLXN_68" name="done" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_2(31:0)">
            <wire x2="1584" y1="1248" y2="1248" x1="1440" />
            <wire x2="1584" y1="1248" y2="1296" x1="1584" />
            <wire x2="1760" y1="1296" y2="1296" x1="1584" />
        </branch>
        <branch name="XLXN_1">
            <wire x2="1760" y1="1232" y2="1232" x1="1744" />
            <wire x2="1744" y1="1232" y2="1584" x1="1744" />
            <wire x2="2208" y1="1584" y2="1584" x1="1744" />
            <wire x2="2208" y1="1584" y2="1760" x1="2208" />
            <wire x2="2208" y1="1760" y2="1760" x1="2192" />
        </branch>
        <instance x="1760" y="1200" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_34">
            <wire x2="1504" y1="1024" y2="1024" x1="784" />
            <wire x2="1504" y1="1024" y2="1824" x1="1504" />
            <wire x2="1808" y1="1824" y2="1824" x1="1504" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="384" y1="1088" y2="1088" x1="240" />
            <wire x2="384" y1="1088" y2="1632" x1="384" />
            <wire x2="832" y1="1632" y2="1632" x1="384" />
            <wire x2="400" y1="1088" y2="1088" x1="384" />
            <wire x2="1760" y1="656" y2="656" x1="384" />
            <wire x2="384" y1="656" y2="1088" x1="384" />
            <wire x2="832" y1="1440" y2="1632" x1="832" />
            <wire x2="1056" y1="1440" y2="1440" x1="832" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="832" y1="1088" y2="1088" x1="784" />
            <wire x2="832" y1="720" y2="1088" x1="832" />
            <wire x2="1760" y1="720" y2="720" x1="832" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="368" y1="1152" y2="1152" x1="240" />
            <wire x2="400" y1="1152" y2="1152" x1="368" />
            <wire x2="368" y1="1152" y2="1648" x1="368" />
            <wire x2="368" y1="1648" y2="1760" x1="368" />
            <wire x2="1808" y1="1760" y2="1760" x1="368" />
            <wire x2="368" y1="1760" y2="2064" x1="368" />
            <wire x2="1056" y1="2064" y2="2064" x1="368" />
            <wire x2="848" y1="1648" y2="1648" x1="368" />
            <wire x2="1760" y1="592" y2="592" x1="368" />
            <wire x2="368" y1="592" y2="1152" x1="368" />
            <wire x2="848" y1="1376" y2="1648" x1="848" />
            <wire x2="1056" y1="1376" y2="1376" x1="848" />
        </branch>
        <instance x="1808" y="2112" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1056" y="1968" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_25(3:0)">
            <wire x2="912" y1="1216" y2="1216" x1="784" />
            <wire x2="912" y1="1216" y2="1936" x1="912" />
            <wire x2="1056" y1="1936" y2="1936" x1="912" />
            <wire x2="1760" y1="848" y2="848" x1="912" />
            <wire x2="912" y1="848" y2="1216" x1="912" />
        </branch>
        <branch name="XLXN_26(1:0)">
            <wire x2="896" y1="1152" y2="1152" x1="784" />
            <wire x2="896" y1="1152" y2="2000" x1="896" />
            <wire x2="1056" y1="2000" y2="2000" x1="896" />
            <wire x2="1760" y1="784" y2="784" x1="896" />
            <wire x2="896" y1="784" y2="1152" x1="896" />
        </branch>
        <branch name="XLXN_57(31:0)">
            <wire x2="1488" y1="1632" y2="1632" x1="1440" />
            <wire x2="1488" y1="1632" y2="1680" x1="1488" />
            <wire x2="1600" y1="1680" y2="1680" x1="1488" />
            <wire x2="1600" y1="1680" y2="1888" x1="1600" />
            <wire x2="1808" y1="1888" y2="1888" x1="1600" />
            <wire x2="1600" y1="1424" y2="1680" x1="1600" />
            <wire x2="1760" y1="1424" y2="1424" x1="1600" />
        </branch>
        <branch name="XLXN_58(31:0)">
            <wire x2="1472" y1="1440" y2="1440" x1="1440" />
            <wire x2="1472" y1="1440" y2="1488" x1="1472" />
            <wire x2="1520" y1="1488" y2="1488" x1="1472" />
            <wire x2="1520" y1="1488" y2="2016" x1="1520" />
            <wire x2="1808" y1="2016" y2="2016" x1="1520" />
            <wire x2="1520" y1="1360" y2="1488" x1="1520" />
            <wire x2="1760" y1="1360" y2="1360" x1="1520" />
        </branch>
        <branch name="XLXN_9(31:0)">
            <wire x2="1632" y1="1872" y2="1872" x1="1440" />
            <wire x2="1760" y1="1488" y2="1488" x1="1632" />
            <wire x2="1632" y1="1488" y2="1872" x1="1632" />
        </branch>
        <instance x="1056" y="1664" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_15">
            <wire x2="800" y1="1280" y2="1280" x1="784" />
            <wire x2="800" y1="1248" y2="1280" x1="800" />
            <wire x2="1056" y1="1248" y2="1248" x1="800" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="800" y1="1344" y2="1344" x1="784" />
            <wire x2="800" y1="1312" y2="1344" x1="800" />
            <wire x2="1056" y1="1312" y2="1312" x1="800" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="2256" y1="496" y2="496" x1="304" />
            <wire x2="2256" y1="496" y2="592" x1="2256" />
            <wire x2="304" y1="496" y2="1408" x1="304" />
            <wire x2="400" y1="1408" y2="1408" x1="304" />
            <wire x2="2256" y1="592" y2="592" x1="2192" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="400" y1="1472" y2="1744" x1="400" />
            <wire x2="1456" y1="1744" y2="1744" x1="400" />
            <wire x2="1456" y1="1696" y2="1696" x1="1440" />
            <wire x2="1456" y1="1696" y2="1744" x1="1456" />
        </branch>
        <instance x="400" y="1248" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_29(3:0)">
            <wire x2="400" y1="1216" y2="1216" x1="240" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="400" y1="960" y2="960" x1="240" />
        </branch>
        <branch name="XLXN_12(31:0)">
            <wire x2="1056" y1="1504" y2="1504" x1="976" />
            <wire x2="976" y1="1504" y2="2304" x1="976" />
            <wire x2="2304" y1="2304" y2="2304" x1="976" />
            <wire x2="2304" y1="1360" y2="1360" x1="2192" />
            <wire x2="2304" y1="1360" y2="2304" x1="2304" />
        </branch>
        <branch name="XLXN_55(31:0)">
            <wire x2="1056" y1="1568" y2="1568" x1="992" />
            <wire x2="992" y1="1568" y2="2272" x1="992" />
            <wire x2="2272" y1="2272" y2="2272" x1="992" />
            <wire x2="2272" y1="1424" y2="1424" x1="2192" />
            <wire x2="2272" y1="1424" y2="2272" x1="2272" />
        </branch>
        <branch name="XLXN_56(31:0)">
            <wire x2="1056" y1="1632" y2="1632" x1="1008" />
            <wire x2="1008" y1="1632" y2="2240" x1="1008" />
            <wire x2="2240" y1="2240" y2="2240" x1="1008" />
            <wire x2="2240" y1="1488" y2="1488" x1="2192" />
            <wire x2="2240" y1="1488" y2="2240" x1="2240" />
        </branch>
    </sheet>
</drawing>