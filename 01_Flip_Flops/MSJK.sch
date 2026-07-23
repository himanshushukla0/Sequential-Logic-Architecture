<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_81" />
        <signal name="XLXN_84" />
        <signal name="XLXN_3" />
        <signal name="XLXN_85" />
        <signal name="XLXN_88" />
        <signal name="XLXN_91" />
        <signal name="XLXN_92" />
        <signal name="XLXN_8" />
        <signal name="XLXN_93" />
        <signal name="XLXN_99" />
        <signal name="XLXN_11" />
        <signal name="XLXN_100" />
        <signal name="XLXN_13" />
        <signal name="XLXN_102" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="Q" />
        <signal name="XLXN_105" />
        <signal name="XLXN_19" />
        <signal name="Qb" />
        <signal name="J" />
        <signal name="K" />
        <signal name="Clr" />
        <signal name="CLK" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="Qb" />
        <port polarity="Input" name="J" />
        <port polarity="Input" name="K" />
        <port polarity="Input" name="Clr" />
        <port polarity="Input" name="CLK" />
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
        <block symbolname="nand2" name="XLXI_41">
            <blockpin signalname="XLXN_99" name="I0" />
            <blockpin signalname="XLXN_85" name="I1" />
            <blockpin signalname="XLXN_100" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_43">
            <blockpin signalname="XLXN_102" name="I0" />
            <blockpin signalname="XLXN_100" name="I1" />
            <blockpin signalname="XLXN_91" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_44">
            <blockpin signalname="XLXN_99" name="I0" />
            <blockpin signalname="XLXN_102" name="I1" />
            <blockpin signalname="XLXN_92" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_45">
            <blockpin signalname="Qb" name="I0" />
            <blockpin signalname="XLXN_93" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_46">
            <blockpin signalname="Clr" name="I0" />
            <blockpin signalname="XLXN_92" name="I1" />
            <blockpin signalname="Q" name="I2" />
            <blockpin signalname="Qb" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_47">
            <blockpin signalname="Q" name="I0" />
            <blockpin signalname="K" name="I1" />
            <blockpin signalname="CLK" name="I2" />
            <blockpin signalname="XLXN_88" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_48">
            <blockpin signalname="XLXN_81" name="I0" />
            <blockpin signalname="XLXN_105" name="I1" />
            <blockpin signalname="XLXN_85" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_49">
            <blockpin signalname="Clr" name="I" />
            <blockpin signalname="XLXN_81" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_52">
            <blockpin signalname="XLXN_84" name="I0" />
            <blockpin signalname="XLXN_91" name="I1" />
            <blockpin signalname="XLXN_93" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_53">
            <blockpin signalname="Clr" name="I" />
            <blockpin signalname="XLXN_84" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_54">
            <blockpin signalname="Clr" name="I0" />
            <blockpin signalname="XLXN_88" name="I1" />
            <blockpin signalname="XLXN_100" name="I2" />
            <blockpin signalname="XLXN_99" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_55">
            <blockpin signalname="CLK" name="I" />
            <blockpin signalname="XLXN_102" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_56">
            <blockpin signalname="CLK" name="I0" />
            <blockpin signalname="J" name="I1" />
            <blockpin signalname="Qb" name="I2" />
            <blockpin signalname="XLXN_105" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="2160" y="1632" name="XLXI_41" orien="R0" />
        <instance x="2880" y="1632" name="XLXI_43" orien="R0" />
        <instance x="2880" y="2032" name="XLXI_44" orien="R0" />
        <instance x="3680" y="1632" name="XLXI_45" orien="R0" />
        <instance x="3680" y="2096" name="XLXI_46" orien="R0" />
        <instance x="1440" y="2096" name="XLXI_47" orien="R0" />
        <instance x="1936" y="1280" name="XLXI_48" orien="R0" />
        <branch name="XLXN_81">
            <wire x2="1936" y1="1216" y2="1216" x1="1904" />
        </branch>
        <instance x="1680" y="1248" name="XLXI_49" orien="R0" />
        <instance x="3408" y="1280" name="XLXI_52" orien="R0" />
        <branch name="XLXN_84">
            <wire x2="3408" y1="1216" y2="1216" x1="3376" />
        </branch>
        <instance x="3152" y="1248" name="XLXI_53" orien="R0" />
        <branch name="XLXN_85">
            <wire x2="2096" y1="1424" y2="1504" x1="2096" />
            <wire x2="2160" y1="1504" y2="1504" x1="2096" />
            <wire x2="2272" y1="1424" y2="1424" x1="2096" />
            <wire x2="2272" y1="1184" y2="1184" x1="2192" />
            <wire x2="2272" y1="1184" y2="1424" x1="2272" />
        </branch>
        <instance x="2176" y="2080" name="XLXI_54" orien="R0" />
        <branch name="XLXN_88">
            <wire x2="1936" y1="1968" y2="1968" x1="1696" />
            <wire x2="1936" y1="1952" y2="1968" x1="1936" />
            <wire x2="2176" y1="1952" y2="1952" x1="1936" />
        </branch>
        <branch name="XLXN_91">
            <wire x2="3392" y1="1536" y2="1536" x1="3136" />
            <wire x2="3392" y1="1152" y2="1536" x1="3392" />
            <wire x2="3408" y1="1152" y2="1152" x1="3392" />
        </branch>
        <branch name="XLXN_92">
            <wire x2="3408" y1="1936" y2="1936" x1="3136" />
            <wire x2="3408" y1="1936" y2="1968" x1="3408" />
            <wire x2="3680" y1="1968" y2="1968" x1="3408" />
        </branch>
        <branch name="XLXN_93">
            <wire x2="3728" y1="1296" y2="1296" x1="3616" />
            <wire x2="3616" y1="1296" y2="1504" x1="3616" />
            <wire x2="3680" y1="1504" y2="1504" x1="3616" />
            <wire x2="3728" y1="1184" y2="1184" x1="3664" />
            <wire x2="3728" y1="1184" y2="1296" x1="3728" />
        </branch>
        <branch name="XLXN_99">
            <wire x2="2160" y1="1568" y2="1568" x1="2080" />
            <wire x2="2080" y1="1568" y2="1664" x1="2080" />
            <wire x2="2464" y1="1664" y2="1664" x1="2080" />
            <wire x2="2464" y1="1664" y2="1952" x1="2464" />
            <wire x2="2656" y1="1952" y2="1952" x1="2464" />
            <wire x2="2656" y1="1952" y2="1968" x1="2656" />
            <wire x2="2880" y1="1968" y2="1968" x1="2656" />
            <wire x2="2464" y1="1952" y2="1952" x1="2432" />
        </branch>
        <branch name="XLXN_100">
            <wire x2="2176" y1="1648" y2="1888" x1="2176" />
            <wire x2="2464" y1="1648" y2="1648" x1="2176" />
            <wire x2="2464" y1="1536" y2="1536" x1="2416" />
            <wire x2="2640" y1="1536" y2="1536" x1="2464" />
            <wire x2="2464" y1="1536" y2="1648" x1="2464" />
            <wire x2="2640" y1="1504" y2="1536" x1="2640" />
            <wire x2="2880" y1="1504" y2="1504" x1="2640" />
        </branch>
        <instance x="1904" y="2240" name="XLXI_55" orien="R0" />
        <branch name="XLXN_102">
            <wire x2="2496" y1="2208" y2="2208" x1="2128" />
            <wire x2="2496" y1="1744" y2="2208" x1="2496" />
            <wire x2="2864" y1="1744" y2="1744" x1="2496" />
            <wire x2="2864" y1="1744" y2="1904" x1="2864" />
            <wire x2="2880" y1="1904" y2="1904" x1="2864" />
            <wire x2="2880" y1="1568" y2="1568" x1="2864" />
            <wire x2="2864" y1="1568" y2="1744" x1="2864" />
        </branch>
        <branch name="Q">
            <wire x2="1440" y1="2032" y2="2080" x1="1440" />
            <wire x2="4000" y1="2080" y2="2080" x1="1440" />
            <wire x2="3680" y1="1632" y2="1904" x1="3680" />
            <wire x2="3968" y1="1632" y2="1632" x1="3680" />
            <wire x2="3968" y1="1536" y2="1536" x1="3936" />
            <wire x2="3968" y1="1536" y2="1632" x1="3968" />
            <wire x2="4000" y1="1536" y2="1536" x1="3968" />
            <wire x2="4112" y1="1536" y2="1536" x1="4000" />
            <wire x2="4208" y1="1536" y2="1536" x1="4112" />
            <wire x2="4000" y1="1536" y2="2080" x1="4000" />
        </branch>
        <instance x="1440" y="1632" name="XLXI_56" orien="R0" />
        <branch name="XLXN_105">
            <wire x2="1920" y1="1504" y2="1504" x1="1696" />
            <wire x2="1920" y1="1152" y2="1504" x1="1920" />
            <wire x2="1936" y1="1152" y2="1152" x1="1920" />
        </branch>
        <branch name="Qb">
            <wire x2="1440" y1="1344" y2="1440" x1="1440" />
            <wire x2="4048" y1="1344" y2="1344" x1="1440" />
            <wire x2="4048" y1="1344" y2="1968" x1="4048" />
            <wire x2="4240" y1="1968" y2="1968" x1="4048" />
            <wire x2="3680" y1="1568" y2="1568" x1="3600" />
            <wire x2="3600" y1="1568" y2="1648" x1="3600" />
            <wire x2="3968" y1="1648" y2="1648" x1="3600" />
            <wire x2="3968" y1="1648" y2="1968" x1="3968" />
            <wire x2="4048" y1="1968" y2="1968" x1="3968" />
            <wire x2="3968" y1="1968" y2="1968" x1="3936" />
        </branch>
        <branch name="J">
            <wire x2="1440" y1="1504" y2="1504" x1="1408" />
        </branch>
        <branch name="K">
            <wire x2="1440" y1="1968" y2="1968" x1="1408" />
        </branch>
        <branch name="Clr">
            <wire x2="1632" y1="1072" y2="1216" x1="1632" />
            <wire x2="1680" y1="1216" y2="1216" x1="1632" />
            <wire x2="1632" y1="1216" y2="1296" x1="1632" />
            <wire x2="2256" y1="1296" y2="1296" x1="1632" />
            <wire x2="1632" y1="1296" y2="1312" x1="1632" />
            <wire x2="1760" y1="1312" y2="1312" x1="1632" />
            <wire x2="1760" y1="1312" y2="2016" x1="1760" />
            <wire x2="2176" y1="2016" y2="2016" x1="1760" />
            <wire x2="2256" y1="1216" y2="1296" x1="2256" />
            <wire x2="3104" y1="1216" y2="1216" x1="2256" />
            <wire x2="3152" y1="1216" y2="1216" x1="3104" />
            <wire x2="3104" y1="1216" y2="1232" x1="3104" />
            <wire x2="3104" y1="1232" y2="1232" x1="2800" />
            <wire x2="2800" y1="1232" y2="2032" x1="2800" />
            <wire x2="3680" y1="2032" y2="2032" x1="2800" />
        </branch>
        <branch name="CLK">
            <wire x2="992" y1="1744" y2="1760" x1="992" />
            <wire x2="1200" y1="1744" y2="1744" x1="992" />
            <wire x2="1440" y1="1744" y2="1744" x1="1200" />
            <wire x2="1440" y1="1744" y2="1904" x1="1440" />
            <wire x2="1200" y1="1744" y2="2208" x1="1200" />
            <wire x2="1904" y1="2208" y2="2208" x1="1200" />
            <wire x2="1440" y1="1568" y2="1744" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="1408" y="1504" name="J" orien="R180" />
        <iomarker fontsize="28" x="1408" y="1968" name="K" orien="R180" />
        <iomarker fontsize="28" x="4208" y="1536" name="Q" orien="R0" />
        <iomarker fontsize="28" x="4240" y="1968" name="Qb" orien="R0" />
        <iomarker fontsize="28" x="1632" y="1072" name="Clr" orien="R270" />
        <iomarker fontsize="28" x="992" y="1760" name="CLK" orien="R90" />
    </sheet>
</drawing>