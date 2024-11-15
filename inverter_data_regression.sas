proc import out=work.inverter
            datafile="/home/u63898787/Data/InverterData.xlsx"
            dbms=xlsx
            replace;
    getnames=yes;
run;

Data inverter;
 set inverter;
 x1 = WidthNMOS;
 x2 = LengthNMOS;
 x3 = WidthPMOS;
 x4 = LengthPMOS;
 x5 = Setpoint;
 y = TransientPt;
run;

Proc GLM data=inverter plots=diagnostics;
	model y = x1 x5;
run;

/* Indicator Model */
Proc GLM data=inverter plots=diagnostics;
	class x5;
	model y = x1 x2 x3 x4 x5 x1*x5 x2*x5 x3*x5 x4*x5 / solution;
run;

/* Interaction Model */
Proc GLM data=inverter plots=diagnostics;
	class x5;
	model y = x2 x3 x5 x2*x5 x3*x5 x2*x3*x5 / solution;
run;

Proc GLM data=inverter plots=diagnostics;
	model y = x1 x2 x3 x4 x5 x1*x2 x1*x3 x1*x4 x1*x5 x2*x3 x2*x4 x2*x5 x3*x4 x3*x5 x4*x5;
run;
