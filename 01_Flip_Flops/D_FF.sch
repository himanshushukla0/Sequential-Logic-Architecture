<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="D" />
        <signal name="XLXN_104" />
        <signal name="CLR" />
        <signal name="CLK" />
        <signal name="Qb" />
        <signal name="Q" />
        <port polarity="Input" name="D" />
        <port polarity="Input" name="CLR" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="Qb" />
        <port polarity="Output" name="Q" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
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
        <block symbolname="MSJK" name="XLXI_54">
            <blockpin signalname="D" name="J" />
            <blockpin signalname="XLXN_104" name="K" />
            <blockpin signalname="CLR" name="Clr" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="Q" name="Q" />
            <blockpin signalname="Qb" name="Qb" />
        </block>
        <block symbolname="inv" name="XLXI_55">
            <blockpin signalname="D" name="I" />
            <blockpin signalname="XLXN_104" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="2720" y="2224" name="XLXI_54" orien="R0">
        </instance>
        <branch name="D">
            <wire x2="2464" y1="2000" y2="2000" x1="2400" />
            <wire x2="2720" y1="2000" y2="2000" x1="2464" />
            <wire x2="2464" y1="1968" y2="1968" x1="2448" />
            <wire x2="2464" y1="1968" y2="2000" x1="2464" />
            <wire x2="2448" y1="1968" y2="2064" x1="2448" />
            <wire x2="2464" y1="2064" y2="2064" x1="2448" />
        </branch>
        <branch name="XLXN_104">
            <wire x2="2720" y1="2064" y2="2064" x1="2688" />
        </branch>
        <instance x="2464" y="2096" name="XLXI_55" orien="R0" />
        <iomarker fontsize="28" x="2400" y="2000" name="D" orien="R180" />
        <branch name="CLR">
            <wire x2="2720" y1="2128" y2="2128" x1="2688" />
        </branch>
        <iomarker fontsize="28" x="2688" y="2128" name="CLR" orien="R180" />
        <branch name="CLK">
            <wire x2="2720" y1="2192" y2="2192" x1="2688" />
        </branch>
        <iomarker fontsize="28" x="2688" y="2192" name="CLK" orien="R180" />
        <branch name="Qb">
            <wire x2="3136" y1="2192" y2="2192" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="3136" y="2192" name="Qb" orien="R0" />
        <branch name="Q">
            <wire x2="3136" y1="2000" y2="2000" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="3136" y="2000" name="Q" orien="R0" />
    </sheet>
</drawing>