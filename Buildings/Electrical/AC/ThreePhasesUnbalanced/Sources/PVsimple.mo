within Buildings.Electrical.AC.ThreePhasesUnbalanced.Sources;
model PVsimple "Simple PV source without neutral cable"
  extends
    Buildings.Electrical.AC.ThreePhasesUnbalanced.Sources.BaseClasses.UnbalancedPV(
    redeclare Buildings.Electrical.AC.OnePhase.Sources.PVSimple pv_phase1,
    redeclare Buildings.Electrical.AC.OnePhase.Sources.PVSimple pv_phase2,
    redeclare Buildings.Electrical.AC.OnePhase.Sources.PVSimple pv_phase3);
  Modelica.Blocks.Interfaces.RealInput G(unit="W/m2")
    "Total solar irradiation per unit area"
     annotation (Placement(transformation(
        origin={0,110},
        extent={{-20,-20},{20,20}},
        rotation=270), iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={0,110})));
equation
  connect(G, G_int) annotation (Line(
      points={{0,110},{0,94},{0,94},{0,88},{-94,88},{-94,20},{-80,20}},
      color={0,0,127},
      smooth=Smooth.None));
  annotation (
  defaultComponentName="pv",
  Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
            {100,100}}), graphics), Diagram(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics),
    Documentation(revisions="<html>
<ul>
<li>
August 27, 2014, by Marco Bonvini:<br/>
Revised documentation.
</li>
</ul>
</html>", info="<html>
<p>
Simple PV model for three phases unbalanced systems without neutral cable connection.
</p>
<p>
For more information see 
<a href=\"modelica://Buildings.Electrical.AC.OnePhase.Sources.PVSimple\">
Buildings.Electrical.AC.OnePhase.Sources.PVSimple</a>, and
<a href=\"modelica://Buildings.Electrical.AC.ThreePhasesUnbalanced.Sources.BaseClasses.UnbalancedPV\">
Buildings.Electrical.AC.ThreePhasesUnbalanced.Sources.BaseClasses.UnbalancedPV</a>.
</p>
</html>"));
end PVsimple;
