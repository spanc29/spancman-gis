<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="1.8.0-Lisboa" minimumScale="0" maximumScale="1e+08" hasScaleBasedVisibilityFlag="0">
  <transparencyLevelInt>255</transparencyLevelInt>
  <renderer-v2 attr="typ_ventil" symbollevels="0" type="categorizedSymbol">
    <categories>
      <category symbol="0" value="" label=""/>
      <category symbol="1" value="autre" label="autre"/>
      <category symbol="2" value="chapeau simple" label="chapeau simple"/>
      <category symbol="3" value="clapet à membranes" label="clapet à membranes"/>
      <category symbol="4" value="extracteur éolien" label="extracteur éolien"/>
      <category symbol="5" value="extracteur statique" label="extracteur statique"/>
      <category symbol="6" value="inconnue" label="inconnue"/>
      <category symbol="7" value="mécanique" label="mécanique"/>
      <category symbol="8" value="non visible" label="non visible"/>
      <category symbol="9" value="sortie simple" label="sortie simple"/>
      <category symbol="10" value="tuyau coudé" label="tuyau coudé"/>
      <category symbol="11" value="ventilation primaire" label="ventilation primaire"/>
      <category symbol="12" value="ventilation secondaire" label="ventilation secondaire"/>
      <category symbol="13" value="VMC" label="VMC"/>
    </categories>
    <symbols>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="0">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="252,251,253,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="1"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="1">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="244,243,248,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="1"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="10">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="fill" v="#000000"/>
          <prop k="name" v="/ventilation/coudes.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="outline" v="#000000"/>
          <prop k="outline-width" v="1"/>
          <prop k="size" v="0.8"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="11">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="180"/>
          <prop k="color" v="221,175,233,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="triangle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.8"/>
        </layer>
        <layer pass="0" class="FontMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="chr" v="1"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="font" v="Courier"/>
          <prop k="offset" v="0.5,0"/>
          <prop k="size" v="1"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="12">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="221,175,233,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="triangle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.8"/>
        </layer>
        <layer pass="0" class="FontMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="chr" v="2"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="font" v="Courier"/>
          <prop k="offset" v="0.5,0"/>
          <prop k="size" v="1"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="13">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="221,175,233,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="regular_star"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.8"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="2">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="fill" v="#000000"/>
          <prop k="name" v="/ventilation/chapeau.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="outline" v="#000000"/>
          <prop k="outline-width" v="1"/>
          <prop k="size" v="0.8"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="3">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="fill" v="#000000"/>
          <prop k="name" v="/ventilation/aerateur_membrane.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="outline" v="#000000"/>
          <prop k="outline-width" v="1"/>
          <prop k="size" v="0.8"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="4">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="fill" v="#000000"/>
          <prop k="name" v="/ventilation/extract_eolien.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="outline" v="#000000"/>
          <prop k="outline-width" v="1"/>
          <prop k="size" v="0.8"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="5">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="fill" v="#000000"/>
          <prop k="name" v="/ventilation/extract_stat2.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="outline" v="#000000"/>
          <prop k="outline-width" v="1"/>
          <prop k="size" v="0.8"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="6">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="221,175,233,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="triangle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.8"/>
        </layer>
        <layer pass="0" class="FontMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="chr" v="?"/>
          <prop k="color" v="255,0,0,255"/>
          <prop k="font" v="Courier 10 Pitch"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.5"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="7">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="fill" v="#000000"/>
          <prop k="name" v="/ventilation/mecanique.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="outline" v="#000000"/>
          <prop k="outline-width" v="1"/>
          <prop k="size" v="0.8"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="8">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="221,175,233,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="triangle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.8"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,0,0,255"/>
          <prop k="color_border" v="255,0,0,255"/>
          <prop k="name" v="cross2"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="1"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="9">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="fill" v="#000000"/>
          <prop k="name" v="/ventilation/pas_de_term.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="outline" v="#000000"/>
          <prop k="outline-width" v="1"/>
          <prop k="size" v="0.8"/>
        </layer>
      </symbol>
    </symbols>
    <source-symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="0">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="160,45,137,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="1"/>
        </layer>
      </symbol>
    </source-symbol>
    <colorramp type="gradient" name="[source]">
      <prop k="color1" v="252,251,253,255"/>
      <prop k="color2" v="63,0,125,255"/>
      <prop k="stops" v="0.13;239,237,245,255:0.26;218,218,235,255:0.39;188,189,220,255:0.52;158,154,200,255:0.65;128,125,186,255:0.75;106,81,163,255:0.9;84,39,143,255"/>
    </colorramp>
    <rotation field="angle"/>
    <sizescale field="taille"/>
  </renderer-v2>
  <customproperties/>
  <displayfield>typ_ventil</displayfield>
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
    <edittype type="3" name="accessibilite">
      <valuepair key="accessible" value="accessible"/>
      <valuepair key="accès difficile" value="accès difficile"/>
      <valuepair key="accès impossible" value="accès impossible"/>
      <valuepair key="accès trop profond" value="accès trop profond"/>
      <valuepair key="découvert pour contrôle" value="découvert pour contrôle"/>
      <valuepair key="engin nécessaire" value="engin nécessaire"/>
      <valuepair key="non renseigné" value="non renseigné"/>
    </edittype>
    <edittype type="5" min="0" step="15" name="angle" max="360"/>
    <edittype type="13" name="annee_pose"/>
    <edittype type="0" name="comments"/>
    <edittype type="13" name="cree_le"/>
    <edittype type="13" name="desaffecte_le"/>
    <edittype type="5" min="1" step="10" name="diametre" max="200"/>
    <edittype type="8" name="docu2"/>
    <edittype type="11" name="gid"/>
    <edittype type="0" name="hauteur"/>
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
    <edittype type="0" name="marq_constructeur"/>
    <edittype type="13" name="modifie_le"/>
    <edittype type="0" name="origine"/>
    <edittype type="8" name="photo"/>
    <edittype type="0" name="poseur"/>
    <edittype type="0" name="refdoss"/>
    <edittype type="0" name="saisie_par"/>
    <edittype type="5" min="1" step="1" name="taille" max="100"/>
    <edittype type="3" name="test_fumee">
      <valuepair key="non réalisable" value="non réalisable"/>
      <valuepair key="non réalisé" value="non réalisé"/>
      <valuepair key="négatif" value="négatif"/>
      <valuepair key="positif" value="positif"/>
    </edittype>
    <edittype unchecked="négatif" type="7" checked="positif" name="test_fumé"/>
    <edittype type="3" name="typ_ventil">
      <valuepair key="VMC" value="VMC"/>
      <valuepair key="autre" value="autre"/>
      <valuepair key="chapeau simple" value="chapeau simple"/>
      <valuepair key="clapet à membranes" value="clapet à membranes"/>
      <valuepair key="extracteur statique" value="extracteur statique"/>
      <valuepair key="extracteur éolien" value="extracteur éolien"/>
      <valuepair key="inconnue" value="inconnue"/>
      <valuepair key="mécanique" value="mécanique"/>
      <valuepair key="non visible" value="non visible"/>
      <valuepair key="sortie simple" value="sortie simple"/>
      <valuepair key="tuyau coudé" value="tuyau coudé"/>
      <valuepair key="ventilation primaire" value="ventilation primaire"/>
      <valuepair key="ventilation secondaire" value="ventilation secondaire"/>
    </edittype>
  </edittypes>
  <editform>.</editform>
  <editforminit></editforminit>
  <annotationform>.</annotationform>
  <aliases>
    <alias field="accessibilite" index="14" name="accessibilité"/>
    <alias field="annee_pose" index="11" name="année de pose"/>
    <alias field="comments" index="9" name="commentaires"/>
    <alias field="cree_le" index="20" name="créé le"/>
    <alias field="identif" index="3" name="identifiant"/>
    <alias field="integrite" index="15" name="intégrité"/>
    <alias field="modifie_le" index="21" name="modifié le"/>
    <alias field="refdoss" index="1" name="référence dossier"/>
    <alias field="saisie_par" index="22" name="saisie par"/>
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
