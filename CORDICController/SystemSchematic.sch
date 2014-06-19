<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2(3:0)" />
        <signal name="XLXN_3(31:0)" />
        <signal name="XLXN_4(31:0)" />
        <signal name="XLXN_5(31:0)" />
        <signal name="XLXN_7(31:0)" />
        <signal name="XLXN_8(31:0)" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_6(31:0)" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15(15:0)" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18(3:0)" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_23(31:0)" />
        <signal name="XLXN_24(31:0)" />
        <signal name="XLXN_25(31:0)" />
        <signal name="XLXN_26(31:0)" />
        <signal name="XLXN_27(31:0)" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_31(31:0)" />
        <signal name="XLXN_32(31:0)" />
        <signal name="XLXN_33(31:0)" />
        <signal name="XLXN_34(31:0)" />
        <signal name="XLXN_35(31:0)" />
        <signal name="XLXN_36(31:0)" />
        <signal name="XLXN_37(3:0)" />
        <signal name="XLXN_39(3:0)" />
        <signal name="XLXN_40(3:0)" />
        <signal name="XLXN_41(1:0)" />
        <signal name="XLXN_42(1:0)" />
        <signal name="XLXN_43(31:0)" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <blockdef name="register_file">
            <timestamp>2014-6-19T20:55:44</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="368" y="20" height="24" />
            <line x2="432" y1="32" y2="32" x1="368" />
            <rect width="64" x="368" y="84" height="24" />
            <line x2="432" y1="96" y2="96" x1="368" />
            <rect width="64" x="368" y="148" height="24" />
            <line x2="432" y1="160" y2="160" x1="368" />
            <rect width="64" x="368" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="368" y="-384" height="28" />
            <rect width="64" x="368" y="-332" height="20" />
            <rect width="304" x="64" y="-448" height="704" />
            <line x2="432" y1="-368" y2="-368" x1="368" />
            <line x2="432" y1="-416" y2="-416" x1="368" />
            <line x2="436" y1="-320" y2="-320" x1="372" />
        </blockdef>
        <blockdef name="Controller">
            <timestamp>2014-6-19T20:37:13</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Comparator">
            <timestamp>2014-6-19T20:29:32</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2014-6-19T20:31:36</timestamp>
            <rect width="304" x="64" y="-640" height="640" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <rect width="64" x="368" y="-476" height="24" />
            <line x2="432" y1="-464" y2="-464" x1="368" />
            <rect width="64" x="368" y="-332" height="24" />
            <line x2="432" y1="-320" y2="-320" x1="368" />
            <rect width="64" x="368" y="-188" height="24" />
            <line x2="432" y1="-176" y2="-176" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="BinMem">
            <timestamp>2014-6-19T21:15:36</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
        <block symbolname="register_file" name="XLXI_1">
            <blockpin signalname="XLXN_10" name="wr_enable" />
            <blockpin signalname="XLXN_44" name="clk" />
            <blockpin signalname="XLXN_9" name="rst" />
            <blockpin signalname="XLXN_19" name="rd_enable" />
            <blockpin signalname="XLXN_6(31:0)" name="wr_data0(31:0)" />
            <blockpin signalname="XLXN_7(31:0)" name="wr_data1(31:0)" />
            <blockpin signalname="XLXN_8(31:0)" name="wr_data2(31:0)" />
            <blockpin signalname="XLXN_4(31:0)" name="rd_data1(31:0)" />
            <blockpin signalname="XLXN_3(31:0)" name="rd_data0(31:0)" />
            <blockpin signalname="XLXN_5(31:0)" name="rd_data2(31:0)" />
        </block>
        <block symbolname="Controller" name="XLXI_2">
            <blockpin signalname="XLXN_16" name="start" />
            <blockpin signalname="XLXN_10" name="done" />
            <blockpin signalname="XLXN_9" name="rst" />
            <blockpin signalname="XLXN_44" name="clk" />
            <blockpin signalname="XLXN_18(3:0)" name="code(3:0)" />
            <blockpin name="t" />
            <blockpin signalname="XLXN_45" name="op" />
            <blockpin signalname="XLXN_19" name="load" />
            <blockpin signalname="XLXN_41(1:0)" name="m(1:0)" />
            <blockpin signalname="XLXN_2(3:0)" name="i(3:0)" />
        </block>
        <block symbolname="Comparator" name="XLXI_3">
            <blockpin signalname="XLXN_44" name="clk" />
            <blockpin signalname="XLXN_45" name="OperationSelect" />
            <blockpin name="Zi(31:0)" />
            <blockpin name="Z0(31:0)" />
            <blockpin name="Yi(31:0)" />
            <blockpin name="Y0(31:0)" />
            <blockpin name="Output" />
        </block>
        <block symbolname="ALU" name="XLXI_5">
            <blockpin signalname="XLXN_44" name="CLK" />
            <blockpin signalname="XLXN_9" name="RST" />
            <blockpin name="EN" />
            <blockpin signalname="XLXN_41(1:0)" name="m(1:0)" />
            <blockpin signalname="XLXN_2(3:0)" name="i(3:0)" />
            <blockpin signalname="XLXN_3(31:0)" name="x_i(15:0)" />
            <blockpin signalname="XLXN_4(31:0)" name="y_i(15:0)" />
            <blockpin signalname="XLXN_5(31:0)" name="z_i(15:0)" />
            <blockpin name="theta_i(15:0)" />
            <blockpin signalname="XLXN_43(31:0)" name="delta_i(15:0)" />
            <blockpin signalname="XLXN_10" name="DONE" />
            <blockpin name="lookup_i(15:0)" />
            <blockpin signalname="XLXN_6(31:0)" name="x_next(15:0)" />
            <blockpin signalname="XLXN_7(31:0)" name="y_next(15:0)" />
            <blockpin signalname="XLXN_8(31:0)" name="z_next(15:0)" />
        </block>
        <block symbolname="BinMem" name="XLXI_6">
            <blockpin signalname="XLXN_2(3:0)" name="i(3:0)" />
            <blockpin signalname="XLXN_43(31:0)" name="data(31:0)" />
            <blockpin signalname="XLXN_41(1:0)" name="mode(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_2(3:0)">
            <wire x2="1264" y1="1104" y2="1104" x1="1152" />
            <wire x2="1824" y1="1104" y2="1104" x1="1264" />
            <wire x2="1264" y1="1104" y2="1536" x1="1264" />
            <wire x2="1360" y1="1536" y2="1536" x1="1264" />
        </branch>
        <branch name="XLXN_3(31:0)">
            <wire x2="1360" y1="1216" y2="1216" x1="1184" />
            <wire x2="1184" y1="1216" y2="1360" x1="1184" />
            <wire x2="1824" y1="1168" y2="1168" x1="1360" />
            <wire x2="1360" y1="1168" y2="1216" x1="1360" />
        </branch>
        <branch name="XLXN_4(31:0)">
            <wire x2="1248" y1="1408" y2="1408" x1="1184" />
            <wire x2="1248" y1="1264" y2="1408" x1="1248" />
            <wire x2="1424" y1="1264" y2="1264" x1="1248" />
            <wire x2="1424" y1="1232" y2="1264" x1="1424" />
            <wire x2="1824" y1="1232" y2="1232" x1="1424" />
        </branch>
        <branch name="XLXN_5(31:0)">
            <wire x2="1296" y1="1456" y2="1456" x1="1184" />
            <wire x2="1824" y1="1296" y2="1296" x1="1296" />
            <wire x2="1296" y1="1296" y2="1456" x1="1296" />
        </branch>
        <branch name="XLXN_7(31:0)">
            <wire x2="1424" y1="2080" y2="2080" x1="608" />
            <wire x2="1296" y1="1872" y2="1872" x1="1184" />
            <wire x2="1296" y1="1776" y2="1872" x1="1296" />
            <wire x2="1424" y1="1776" y2="1776" x1="1296" />
            <wire x2="2320" y1="1776" y2="1776" x1="1424" />
            <wire x2="1424" y1="1776" y2="2080" x1="1424" />
            <wire x2="2320" y1="1280" y2="1280" x1="2256" />
            <wire x2="2320" y1="1280" y2="1776" x1="2320" />
            <wire x2="2592" y1="1280" y2="1280" x1="2320" />
        </branch>
        <branch name="XLXN_8(31:0)">
            <wire x2="1472" y1="2096" y2="2096" x1="608" />
            <wire x2="1328" y1="1936" y2="1936" x1="1184" />
            <wire x2="1328" y1="1840" y2="1936" x1="1328" />
            <wire x2="1472" y1="1840" y2="1840" x1="1328" />
            <wire x2="2304" y1="1840" y2="1840" x1="1472" />
            <wire x2="1472" y1="1840" y2="2096" x1="1472" />
            <wire x2="2304" y1="1424" y2="1424" x1="2256" />
            <wire x2="2304" y1="1424" y2="1840" x1="2304" />
            <wire x2="2592" y1="1424" y2="1424" x1="2304" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="656" y1="976" y2="976" x1="576" />
            <wire x2="768" y1="976" y2="976" x1="656" />
            <wire x2="656" y1="976" y2="1488" x1="656" />
            <wire x2="752" y1="1488" y2="1488" x1="656" />
            <wire x2="656" y1="800" y2="976" x1="656" />
            <wire x2="1792" y1="800" y2="800" x1="656" />
            <wire x2="1792" y1="800" y2="912" x1="1792" />
            <wire x2="1824" y1="912" y2="912" x1="1792" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="2320" y1="704" y2="704" x1="720" />
            <wire x2="2320" y1="704" y2="848" x1="2320" />
            <wire x2="720" y1="704" y2="912" x1="720" />
            <wire x2="768" y1="912" y2="912" x1="720" />
            <wire x2="720" y1="912" y2="1360" x1="720" />
            <wire x2="752" y1="1360" y2="1360" x1="720" />
            <wire x2="2320" y1="848" y2="848" x1="2256" />
        </branch>
        <branch name="XLXN_6(31:0)">
            <wire x2="1360" y1="2064" y2="2064" x1="608" />
            <wire x2="1264" y1="1808" y2="1808" x1="1184" />
            <wire x2="1264" y1="1712" y2="1808" x1="1264" />
            <wire x2="1360" y1="1712" y2="1712" x1="1264" />
            <wire x2="2336" y1="1712" y2="1712" x1="1360" />
            <wire x2="1360" y1="1712" y2="2064" x1="1360" />
            <wire x2="2336" y1="1136" y2="1136" x1="2256" />
            <wire x2="2336" y1="1136" y2="1712" x1="2336" />
            <wire x2="2592" y1="1136" y2="1136" x1="2336" />
        </branch>
        <instance x="1824" y="1456" name="XLXI_5" orien="R0">
        </instance>
        <instance x="768" y="1136" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_18(3:0)">
            <wire x2="768" y1="1104" y2="1104" x1="576" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="768" y1="848" y2="848" x1="576" />
        </branch>
        <instance x="752" y="1776" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_19">
            <wire x2="1168" y1="1248" y2="1248" x1="688" />
            <wire x2="688" y1="1248" y2="1808" x1="688" />
            <wire x2="752" y1="1808" y2="1808" x1="688" />
            <wire x2="1168" y1="976" y2="976" x1="1152" />
            <wire x2="1168" y1="976" y2="1248" x1="1168" />
        </branch>
        <instance x="1360" y="1568" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_41(1:0)">
            <wire x2="1216" y1="1040" y2="1040" x1="1152" />
            <wire x2="1824" y1="1040" y2="1040" x1="1216" />
            <wire x2="1216" y1="1040" y2="1600" x1="1216" />
            <wire x2="1360" y1="1600" y2="1600" x1="1216" />
        </branch>
        <branch name="XLXN_43(31:0)">
            <wire x2="1776" y1="1472" y2="1472" x1="1744" />
            <wire x2="1776" y1="1424" y2="1472" x1="1776" />
            <wire x2="1824" y1="1424" y2="1424" x1="1776" />
        </branch>
        <instance x="1392" y="640" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_44">
            <wire x2="688" y1="1040" y2="1040" x1="576" />
            <wire x2="688" y1="1040" y2="1200" x1="688" />
            <wire x2="1184" y1="1200" y2="1200" x1="688" />
            <wire x2="768" y1="1040" y2="1040" x1="688" />
            <wire x2="688" y1="1200" y2="1200" x1="672" />
            <wire x2="672" y1="1200" y2="1424" x1="672" />
            <wire x2="752" y1="1424" y2="1424" x1="672" />
            <wire x2="1392" y1="288" y2="288" x1="688" />
            <wire x2="688" y1="288" y2="1040" x1="688" />
            <wire x2="1824" y1="736" y2="736" x1="1184" />
            <wire x2="1824" y1="736" y2="848" x1="1824" />
            <wire x2="1184" y1="736" y2="1200" x1="1184" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1280" y1="912" y2="912" x1="1152" />
            <wire x2="1392" y1="352" y2="352" x1="1280" />
            <wire x2="1280" y1="352" y2="912" x1="1280" />
        </branch>
    </sheet>
</drawing>