<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="E" />
        <signal name="XLXN_3" />
        <signal name="CLR" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="Q" />
        <signal name="Qb" />
        <signal name="S" />
        <signal name="R" />
        <port polarity="Input" name="E" />
        <port polarity="Input" name="CLR" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="Qb" />
        <port polarity="Input" name="S" />
        <port polarity="Input" name="R" />
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="nand3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <block symbolname="nand2" name="XLXI_1">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="S" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_2">
            <blockpin signalname="R" name="I0" />
            <blockpin signalname="E" name="I1" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_3">
            <blockpin signalname="Qb" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_5">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_7">
            <blockpin signalname="CLR" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="Q" name="I2" />
            <blockpin signalname="Qb" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="CLR" name="I" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1200" y="1328" name="XLXI_1" orien="R0" />
        <instance x="1200" y="1648" name="XLXI_2" orien="R0" />
        <branch name="E">
            <wire x2="1184" y1="1392" y2="1392" x1="1120" />
            <wire x2="1184" y1="1392" y2="1520" x1="1184" />
            <wire x2="1200" y1="1520" y2="1520" x1="1184" />
            <wire x2="1200" y1="1264" y2="1264" x1="1184" />
            <wire x2="1184" y1="1264" y2="1392" x1="1184" />
        </branch>
        <instance x="2160" y="1328" name="XLXI_3" orien="R0" />
        <branch name="CLR">
            <wire x2="1520" y1="880" y2="992" x1="1520" />
            <wire x2="1520" y1="992" y2="1024" x1="1520" />
            <wire x2="1520" y1="1024" y2="1728" x1="1520" />
            <wire x2="2160" y1="1728" y2="1728" x1="1520" />
            <wire x2="1648" y1="1024" y2="1024" x1="1520" />
        </branch>
        <instance x="1920" y="1088" name="XLXI_5" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="1824" y1="1232" y2="1232" x1="1456" />
            <wire x2="1920" y1="960" y2="960" x1="1824" />
            <wire x2="1824" y1="960" y2="1232" x1="1824" />
        </branch>
        <instance x="2160" y="1792" name="XLXI_7" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1920" y1="1024" y2="1024" x1="1872" />
        </branch>
        <instance x="1648" y="1056" name="XLXI_8" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="2080" y1="1104" y2="1200" x1="2080" />
            <wire x2="2160" y1="1200" y2="1200" x1="2080" />
            <wire x2="2256" y1="1104" y2="1104" x1="2080" />
            <wire x2="2256" y1="992" y2="992" x1="2176" />
            <wire x2="2256" y1="992" y2="1104" x1="2256" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1808" y1="1552" y2="1552" x1="1456" />
            <wire x2="1808" y1="1552" y2="1664" x1="1808" />
            <wire x2="2160" y1="1664" y2="1664" x1="1808" />
        </branch>
        <branch name="Q">
            <wire x2="2160" y1="1408" y2="1600" x1="2160" />
            <wire x2="2480" y1="1408" y2="1408" x1="2160" />
            <wire x2="2480" y1="1232" y2="1232" x1="2416" />
            <wire x2="2592" y1="1232" y2="1232" x1="2480" />
            <wire x2="2480" y1="1232" y2="1408" x1="2480" />
        </branch>
        <branch name="Qb">
            <wire x2="2160" y1="1264" y2="1264" x1="2096" />
            <wire x2="2096" y1="1264" y2="1344" x1="2096" />
            <wire x2="2512" y1="1344" y2="1344" x1="2096" />
            <wire x2="2512" y1="1344" y2="1664" x1="2512" />
            <wire x2="2640" y1="1664" y2="1664" x1="2512" />
            <wire x2="2512" y1="1664" y2="1664" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="1520" y="880" name="CLR" orien="R270" />
        <branch name="S">
            <wire x2="1200" y1="1200" y2="1200" x1="1168" />
        </branch>
        <iomarker fontsize="28" x="1168" y="1200" name="S" orien="R180" />
        <iomarker fontsize="28" x="1120" y="1392" name="E" orien="R180" />
        <branch name="R">
            <wire x2="1200" y1="1584" y2="1584" x1="1168" />
        </branch>
        <iomarker fontsize="28" x="1168" y="1584" name="R" orien="R180" />
        <iomarker fontsize="28" x="2640" y="1664" name="Qb" orien="R0" />
        <iomarker fontsize="28" x="2592" y="1232" name="Q" orien="R0" />
    </sheet>
</drawing>