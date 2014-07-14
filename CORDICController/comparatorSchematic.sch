<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="OperationSelect" />
        <signal name="Zi(31:0)" />
        <signal name="Yi(31:0)" />
        <signal name="Output" />
        <port polarity="Input" name="OperationSelect" />
        <port polarity="Input" name="Zi(31:0)" />
        <port polarity="Input" name="Yi(31:0)" />
        <port polarity="Output" name="Output" />
        <blockdef name="Comparator">
            <timestamp>2014-7-14T18:14:0</timestamp>
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="256" x="64" y="-384" height="448" />
        </blockdef>
        <block symbolname="Comparator" name="XLXI_1">
            <blockpin signalname="OperationSelect" name="OperationSelect" />
            <blockpin signalname="Zi(31:0)" name="Zi(31:0)" />
            <blockpin signalname="Yi(31:0)" name="Yi(31:0)" />
            <blockpin signalname="Output" name="Output" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1280" y="1216" name="XLXI_1" orien="R0">
        </instance>
        <branch name="OperationSelect">
            <wire x2="1280" y1="928" y2="928" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1248" y="928" name="OperationSelect" orien="R180" />
        <branch name="Zi(31:0)">
            <wire x2="1280" y1="992" y2="992" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1248" y="992" name="Zi(31:0)" orien="R180" />
        <branch name="Yi(31:0)">
            <wire x2="1280" y1="1120" y2="1120" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1248" y="1120" name="Yi(31:0)" orien="R180" />
        <branch name="Output">
            <wire x2="1696" y1="864" y2="864" x1="1664" />
        </branch>
        <iomarker fontsize="28" x="1696" y="864" name="Output" orien="R0" />
    </sheet>
</drawing>