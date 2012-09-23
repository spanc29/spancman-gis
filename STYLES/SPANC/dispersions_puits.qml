<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="1.8.0-Lisboa" minimumScale="0" maximumScale="1e+08" hasScaleBasedVisibilityFlag="0">
  <transparencyLevelInt>255</transparencyLevelInt>
  <renderer-v2 symbollevels="0" type="RuleRenderer">
    <rules>
      <rule filter=" &quot;typ_dispr&quot;  = 'puits perdu' OR  &quot;typ_dispr&quot; = 'puisard'" symbol="0" label="puits perdu">
        <rule filter="&quot;autorisation&quot; = 'oui'" label="&quot;autorisation&quot; = 'oui'">
          <rule filter="&quot;accessible&quot; = 'accessible'" symbol="1" label="accessible"/>
          <rule filter="&quot;accessible&quot; = 'accès difficile'" symbol="2" label="accès difficile"/>
          <rule filter="&quot;accessible&quot; = 'accès impossible'" symbol="3" label="accès impossible"/>
          <rule filter="&quot;accessible&quot; = 'accès trop profond'" symbol="4" label="accès trop profond"/>
          <rule filter="&quot;accessible&quot; = 'découvert pour contrôle'" symbol="5" label="découvert pour contrôle"/>
          <rule filter="&quot;accessible&quot; = 'engin nécessaire'" symbol="6" label="engin nécessaire"/>
          <rule filter="&quot;accessible&quot; = 'non renseigné'" label="non renseigné"/>
          <rule filter="&quot;accessible&quot; = 'aucun accès'" symbol="7" label="aucun accès"/>
        </rule>
        <rule filter="&quot;autorisation&quot; = 'non'" symbol="8" label="&quot;autorisation&quot; = 'non'">
          <rule filter="&quot;accessible&quot; = 'accessible'" symbol="9" label="accessible"/>
          <rule filter="&quot;accessible&quot; = 'accès difficile'" symbol="10" label="accès difficile"/>
          <rule filter="&quot;accessible&quot; = 'accès impossible'" symbol="11" label="accès impossible"/>
          <rule filter="&quot;accessible&quot; = 'accès trop profond'" symbol="12" label="accès trop profond"/>
          <rule filter="&quot;accessible&quot; = 'découvert pour contrôle'" symbol="13" label="découvert pour contrôle"/>
          <rule filter="&quot;accessible&quot; = 'engin nécessaire'" symbol="14" label="engin nécessaire"/>
          <rule filter="&quot;accessible&quot; = 'non renseigné'" label="non renseigné"/>
          <rule filter="&quot;accessible&quot; = 'aucun accès'" symbol="15" label="aucun accès"/>
        </rule>
      </rule>
      <rule filter=" &quot;typ_dispr&quot;  = 'puits d''infiltration'" symbol="16" label="puits d'infiltration">
        <rule filter="&quot;autorisation&quot; = 'oui'" label="&quot;autorisation&quot; = 'oui'">
          <rule filter="&quot;accessible&quot; = 'accessible'" symbol="17" label="accessible"/>
          <rule filter="&quot;accessible&quot; = 'accès difficile'" symbol="18" label="accès difficile"/>
          <rule filter="&quot;accessible&quot; = 'accès impossible'" symbol="19" label="accès impossible"/>
          <rule filter="&quot;accessible&quot; = 'accès trop profond'" symbol="20" label="accès trop profond"/>
          <rule filter="&quot;accessible&quot; = 'découvert pour contrôle'" symbol="21" label="découvert pour contrôle"/>
          <rule filter="&quot;accessible&quot; = 'engin nécessaire'" symbol="22" label="engin nécessaire"/>
          <rule filter="&quot;accessible&quot; = 'non renseigné'" label="non renseigné"/>
          <rule filter="&quot;accessible&quot; = 'aucun accès'" symbol="23" label="aucun accès"/>
        </rule>
        <rule filter="&quot;autorisation&quot; = 'non'" symbol="24" label="&quot;autorisation&quot; = 'non'">
          <rule filter="&quot;accessible&quot; = 'accessible'" symbol="25" label="accessible"/>
          <rule filter="&quot;accessible&quot; = 'accès difficile'" symbol="26" label="accès difficile"/>
          <rule filter="&quot;accessible&quot; = 'accès impossible'" symbol="27" label="accès impossible"/>
          <rule filter="&quot;accessible&quot; = 'accès trop profond'" symbol="28" label="accès trop profond"/>
          <rule filter="&quot;accessible&quot; = 'découvert pour contrôle'" symbol="29" label="découvert pour contrôle"/>
          <rule filter="&quot;accessible&quot; = 'engin nécessaire'" symbol="30" label="engin nécessaire"/>
          <rule filter="&quot;accessible&quot; = 'non renseigné'" label="non renseigné"/>
          <rule filter="&quot;accessible&quot; = 'aucun accès'" symbol="31" label="aucun accès"/>
        </rule>
      </rule>
      <rule filter=" &quot;typ_dispr&quot;  = 'destination inconnue' OR  &quot;typ_dispr&quot; = 'inconnu' OR  &quot;typ_dispr&quot; ='non renseigné'" symbol="32" label="destination inconnu"/>
    </rules>
    <symbols>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="0">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="fill" v="#000000"/>
          <prop k="name" v="/dispersion/puits_perdu.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="outline" v="#000000"/>
          <prop k="outline-width" v="1"/>
          <prop k="size" v="3"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="1">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="1"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="10">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.4"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="11">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="170,170,0,255"/>
          <prop k="color_border" v="170,170,0,255"/>
          <prop k="name" v="cross"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="2"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="12">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.4"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="13">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="1"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="14">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="1"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="15">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="1"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="16">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="fill" v="#000000"/>
          <prop k="name" v="/dispersion/puits_infiltration.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="outline" v="#000000"/>
          <prop k="outline-width" v="1"/>
          <prop k="size" v="3"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="17">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="1"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="18">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.4"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="19">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="170,170,0,255"/>
          <prop k="color_border" v="170,170,0,255"/>
          <prop k="name" v="cross"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="2"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="2">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.4"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="20">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.4"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="21">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="1"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="22">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="1"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="23">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="1"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="24">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,0,0,255"/>
          <prop k="color_border" v="255,0,0,255"/>
          <prop k="name" v="cross2"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="3"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="25">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="1"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="26">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.4"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="27">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="170,170,0,255"/>
          <prop k="color_border" v="170,170,0,255"/>
          <prop k="name" v="cross"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="2"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="28">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.4"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="29">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="1"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="3">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="170,170,0,255"/>
          <prop k="color_border" v="170,170,0,255"/>
          <prop k="name" v="cross"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="2"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="30">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="1"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="31">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="1"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="32">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="fill" v="#000000"/>
          <prop k="name" v="/dispersion/destinat_inconnue.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="outline" v="#000000"/>
          <prop k="outline-width" v="1"/>
          <prop k="size" v="3"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="4">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.4"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="5">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="1"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="6">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="170,170,127,255"/>
          <prop k="name" v="cross"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="2"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="7">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="170,170,127,255"/>
          <prop k="name" v="cross"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="2"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="8">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,0,0,255"/>
          <prop k="color_border" v="255,0,0,255"/>
          <prop k="name" v="cross2"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="3"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="9">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="1"/>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <customproperties/>
  <displayfield>typ_dispr</displayfield>
  <label>0</label>
  <labelattributes>
    <label fieldname="" text="Étiquette"/>
    <family fieldname="" name="Century Schoolbook L"/>
    <size fieldname="" units="pt" value="12"/>
    <bold fieldname="" on="0"/>
    <italic fieldname="" on="1"/>
    <underline fieldname="" on="0"/>
    <strikeout fieldname="" on="0"/>
    <color fieldname="" red="0" blue="0" green="0"/>
    <x fieldname=""/>
    <y fieldname=""/>
    <offset x="0" y="0" units="pt" yfieldname="" xfieldname=""/>
    <angle fieldname="" value="0" auto="0"/>
    <alignment fieldname="" value="center"/>
    <buffercolor fieldname="" red="255" blue="255" green="255"/>
    <buffersize fieldname="" units="pt" value="1"/>
    <bufferenabled fieldname="" on=""/>
    <multilineenabled fieldname="" on=""/>
    <selectedonly on=""/>
  </labelattributes>
  <edittypes>
    <edittype type="0" name="REFDOSS"/>
    <edittype type="3" name="accessible">
      <valuepair key="accessible" value="accessible"/>
      <valuepair key="accès difficile" value="accès difficile"/>
      <valuepair key="accès impossible" value="accès impossible"/>
      <valuepair key="accès trop profond" value="accès trop profond"/>
      <valuepair key="aucun accès" value="aucun accès"/>
      <valuepair key="découvert pour contrôle" value="découvert pour contrôle"/>
      <valuepair key="engin nécessaire" value="engin nécessaire"/>
      <valuepair key="non renseigné" value="non renseigné"/>
    </edittype>
    <edittype type="5" min="0" step="15" name="angle" max="360"/>
    <edittype type="5" min="1800" step="5" name="annee_pose" max="2100"/>
    <edittype unchecked="non" type="7" checked="oui" name="autorisation"/>
    <edittype type="12" name="comments"/>
    <edittype type="10" name="cree_le"/>
    <edittype type="8" name="docu2"/>
    <edittype type="3" name="ecoulement">
      <valuepair key="non renseigné" value="non renseigné"/>
      <valuepair key="pas d'écoulement (stagnation)" value="pas d'écoulement (stagnation)"/>
      <valuepair key="sens non visible" value="sens non visible"/>
      <valuepair key="écoulement correct" value="écoulement correct"/>
      <valuepair key="écoulement ralenti" value="écoulement ralenti"/>
      <valuepair key="écoulement trop rapide" value="écoulement trop rapide"/>
      <valuepair key="écoulement à contre-sens" value="écoulement à contre-sens"/>
    </edittype>
    <edittype type="11" name="gid"/>
    <edittype type="0" name="ident"/>
    <edittype type="0" name="identif"/>
    <edittype type="0" name="install_gid"/>
    <edittype type="3" name="integrite">
      <valuepair key="absence de défauts" value="absence de défauts"/>
      <valuepair key="corrosion importante" value="corrosion importante"/>
      <valuepair key="corrosion légère" value="corrosion légère"/>
      <valuepair key="corrosion moyenne" value="corrosion moyenne"/>
      <valuepair key="fissuration avec déformation" value="fissuration avec déformation"/>
      <valuepair key="fissuration sans déformation" value="fissuration sans déformation"/>
      <valuepair key="non renseigné" value="non renseigné"/>
      <valuepair key="ouvrage hors-service" value="ouvrage hors-service"/>
      <valuepair key="présence de déformation(s)" value="présence de déformation(s)"/>
      <valuepair key="rupture des matériaux" value="rupture des matériaux"/>
      <valuepair key="étanchéité compromise" value="étanchéité compromise"/>
    </edittype>
    <edittype type="0" name="largeur"/>
    <edittype type="0" name="longueur"/>
    <edittype type="10" name="modifie_le"/>
    <edittype type="8" name="photo"/>
    <edittype type="8" name="photo1"/>
    <edittype type="0" name="photo2"/>
    <edittype type="0" name="poseur"/>
    <edittype type="0" name="profondeur"/>
    <edittype type="3" name="proprete">
      <valuepair key="aspect correct" value="aspect correct"/>
      <valuepair key="entretien ponctuel" value="entretien ponctuel"/>
      <valuepair key="entretien rare" value="entretien rare"/>
      <valuepair key="entretien régulier" value="entretien régulier"/>
      <valuepair key="jamais entretenu" value="jamais entretenu"/>
      <valuepair key="non renseigné" value="non renseigné"/>
      <valuepair key="présence de dépôts anormaux" value="présence de dépôts anormaux"/>
      <valuepair key="présence de flottants anormaux" value="présence de flottants anormaux"/>
      <valuepair key="sans objet" value="sans objet"/>
    </edittype>
    <edittype type="0" name="ref_auto_1"/>
    <edittype type="0" name="ref_autori"/>
    <edittype type="0" name="ref_autorisation"/>
    <edittype type="0" name="refdoss"/>
    <edittype type="3" name="renseignements">
      <valuepair key="sur document(s)" value="sur document(s)"/>
      <valuepair key="sur déclaration" value="sur déclaration"/>
      <valuepair key="sur facture" value="sur facture"/>
      <valuepair key="sur observations/mesures" value="sur observations/mesures"/>
      <valuepair key="sur photo" value="sur photo"/>
      <valuepair key="sur plan" value="sur plan"/>
    </edittype>
    <edittype type="0" name="saisie_par"/>
    <edittype type="3" name="securite">
      <valuepair key="danger imminent" value="danger imminent"/>
      <valuepair key="non évaluée" value="non évaluée"/>
      <valuepair key="risques faibles" value="risques faibles"/>
      <valuepair key="sécurisé" value="sécurisé"/>
    </edittype>
    <edittype type="0" name="taille"/>
    <edittype type="3" name="typ_dispr">
      <valuepair key="destination inconnue" value="destination inconnue"/>
      <valuepair key="inconnu" value="inconnu"/>
      <valuepair key="puisard" value="puisard"/>
      <valuepair key="puits d'infiltration" value="puits d'infiltration"/>
      <valuepair key="puits perdu" value="puits perdu"/>
    </edittype>
  </edittypes>
  <editform>.</editform>
  <editforminit></editforminit>
  <annotationform>.</annotationform>
  <aliases>
    <alias field="accessible" index="14" name="accessibilité"/>
    <alias field="annee_pose" index="11" name="année de pose"/>
    <alias field="comments" index="9" name="commentaires"/>
    <alias field="cree_le" index="21" name="créé le"/>
    <alias field="ecoulement" index="18" name="écoulement"/>
    <alias field="identif" index="3" name="identifiant"/>
    <alias field="integrite" index="15" name="intégrité"/>
    <alias field="modifie_le" index="22" name="modifié le"/>
    <alias field="proprete" index="16" name="propreté"/>
    <alias field="refdoss" index="1" name="référence dossier"/>
    <alias field="saisie_par" index="23" name="saisie par"/>
    <alias field="securite" index="17" name="sécurité"/>
  </aliases>
  <attributeactions>
    <actionsetting action="[% &quot;photo&quot; %]" capture="0" type="5" name="Ouvrir fichier"/>
    <actionsetting action="[% &quot;docu2&quot; %]" capture="0" type="5" name="Ouvrir docu2"/>
    <actionsetting action="QtGui.QMessageBox.information(None, &quot;GID&quot;, &quot;la clef(gid) est [% &quot;gid&quot; %]&quot;)" capture="0" type="1" name="Récupère l'id de l'entité"/>
    <actionsetting action="QtGui.QMessageBox.information(None, &quot;REFDOSS&quot;, &quot;reference dossier :  [% &quot;refdoss&quot; %]&quot;)" capture="0" type="1" name="Valeur REFDOSS"/>
    <actionsetting action="QtGui.QMessageBox.information(None, &quot;date&quot;, &quot;creation le  [% &quot;cree_le&quot; %], modification le [% &quot;modifie_le&quot; %]&quot;)" capture="0" type="1" name="date création objet"/>
    <actionsetting action="http://www.google.fr/?q=[% &quot;poseur&quot; %]" capture="0" type="5" name="Recherche web poseur"/>
  </attributeactions>
  <overlay display="false" type="diagram">
    <renderer item_interpretation="linear">
      <diagramitem size="0" value="0"/>
      <diagramitem size="0" value="0"/>
    </renderer>
    <factory sizeUnits="MM" type="Pie">
      <wellknownname>Pie</wellknownname>
      <classificationfield>0</classificationfield>
    </factory>
    <scalingAttribute>0</scalingAttribute>
  </overlay>
</qgis>
