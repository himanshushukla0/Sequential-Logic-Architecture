<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="T" />
        <signal name="CLR" />
        <signal name="CLK" />
        <signal name="Q" />
        <signal name="Qb" />
        <port polarity="Input" name="T" />
        <port polarity="Input" name="CLR" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="Qb" />
        <blockdef name="MSJK">
            <timestamp>2026-7-8T7:20:36</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="MSJK" name="XLXI_1">
            <blockpin signalname="T" name="J" />
            <blockpin signalname="T" name="K" />
            <blockpin signalname="CLR" name="Clr" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="Q" name="Q" />
            <blockpin signalname="Qb" name="Qb" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1568" y="1168" name="XLXI_1" orien="R0">
        </instance>
        <branch name="T">
            <wire x2="1408" y1="944" y2="944" x1="1248" />
            <wire x2="1568" y1="944" y2="944" x1="1408" />
            <wire x2="1408" y1="944" y2="1008" x1="1408" />
            <wire x2="1568" y1="1008" y2="1008" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1248" y="944" name="T" orien="R180" />
        <branch name="CLR">
            <wire x2="1568" y1="1072" y2="1072" x1="1536" />
        </branch>
        <iomarker fontsize="28" x="1536" y="1072" name="CLR" orien="R180" />
        <branch name="CLK">
            <wire x2="1568" y1="1136" y2="1136" x1="1536" />
        </branch>
        <iomarker fontsize="28" x="1536" y="1136" name="CLK" orien="R180" />
        <branch name="Q">
            <wire x2="1984" y1="944" y2="944" x1="1952" />
        </branch>
        <iomarker fontsize="28" x="1984" y="944" name="Q" orien="R0" />
        <branch name="Qb">
            <wire x2="1984" y1="1136" y2="1136" x1="1952" />
        </branch>
        <iomarker fontsize="28" x="1984" y="1136" name="Qb" orien="R0" />
    </sheet>
</drawing>