<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="1.8.0-Lisboa" minimumScale="0" maximumScale="1e+08" hasScaleBasedVisibilityFlag="0">
  <transparencyLevelInt>255</transparencyLevelInt>
  <renderer-v2 attr="type_infiltration" symbollevels="0" type="categorizedSymbol">
    <categories>
      <category symbol="0" value="" label=""/>
      <category symbol="1" value="irrigation végétaux" label="irrigation végétaux"/>
      <category symbol="2" value="lit" label="lit"/>
      <category symbol="3" value="noues" label="noues"/>
      <category symbol="4" value="tranchées" label="tranchées"/>
    </categories>
    <symbols>
      <symbol outputUnit="MM" alpha="1" type="fill" name="0">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="246,239,247,255"/>
          <prop k="color_border" v="0,170,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="solid"/>
          <prop k="style_border" v="dot"/>
          <prop k="width_border" v="0.26"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="fill" name="1">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="170,255,127,255"/>
          <prop k="color_border" v="0,170,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="diagonal_x"/>
          <prop k="style_border" v="dot"/>
          <prop k="width_border" v="0.26"/>
        </layer>
        <layer pass="0" class="SVGFill" locked="0">
          <prop k="angle" v="0"/>
          <prop k="svgFile" v="/biology/Coniferous.svg"/>
          <prop k="svgFillColor" v="#000000"/>
          <prop k="svgOutlineColor" v="#000000"/>
          <prop k="svgOutlineWidth" v="1"/>
          <prop k="width" v="5"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="fill" name="2">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="137,181,214,255"/>
          <prop k="color_border" v="0,170,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="diagonal_x"/>
          <prop k="style_border" v="dot"/>
          <prop k="width_border" v="0.26"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="fill" name="3">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="170,255,0,255"/>
          <prop k="color_border" v="0,170,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="diagonal_x"/>
          <prop k="style_border" v="dot"/>
          <prop k="width_border" v="0.26"/>
        </layer>
        <layer pass="0" class="SVGFill" locked="0">
          <prop k="angle" v="0"/>
          <prop k="svgFile" v="/traitements/phyto1.svg"/>
          <prop k="svgFillColor" v="#000000"/>
          <prop k="svgOutlineColor" v="#000000"/>
          <prop k="svgOutlineWidth" v="1"/>
          <prop k="width" v="5"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="fill" name="4">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="255,85,0,255"/>
          <prop k="color_border" v="0,170,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="diagonal_x"/>
          <prop k="style_border" v="dot"/>
          <prop k="width_border" v="0.26"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="line" name="@1@1">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="customdash" v="5;2"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0"/>
          <prop k="penstyle" v="no"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width" v="0.26"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="line" name="@3@1">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="customdash" v="5;2"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0"/>
          <prop k="penstyle" v="no"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width" v="0.26"/>
        </layer>
      </symbol>
    </symbols>
    <source-symbol>
      <symbol outputUnit="MM" alpha="1" type="fill" name="0">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="164,88,112,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="solid"/>
          <prop k="style_border" v="solid"/>
          <prop k="width_border" v="0.26"/>
        </layer>
      </symbol>
    </source-symbol>
    <colorramp type="gradient" name="[source]">
      <prop k="color1" v="246,239,247,255"/>
      <prop k="color2" v="1,108,89,255"/>
      <prop k="stops" v="0.25;189,201,225,255:0.5;103,169,207,255:0.75;28,144,153,255"/>
    </colorramp>
    <rotation field=""/>
    <sizescale field=""/>
  </renderer-v2>
  <customproperties/>
  <displayfield>type_infiltration</displayfield>
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
    <edittype type="3" name="accessible">
      <valuepair key="accessible" value="accessible"/>
      <valuepair key="accès difficile" value="accès difficile"/>
      <valuepair key="accès impossible" value="accès impossible"/>
      <valuepair key="accès trop profond" value="accès trop profond"/>
      <valuepair key="découvert pour contrôle" value="découvert pour contrôle"/>
      <valuepair key="engin nécessaire" value="engin nécessaire"/>
      <valuepair key="non renseigné" value="non renseigné"/>
    </edittype>
    <edittype type="5" min="0" step="15" name="angle" max="360"/>
    <edittype type="5" min="1800" step="5" name="annee_pose" max="2200"/>
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
    <edittype type="0" name="haut_prof"/>
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
    <edittype type="0" name="marq_constructeur"/>
    <edittype type="0" name="marques"/>
    <edittype type="10" name="modifie_le"/>
    <edittype type="8" name="photo"/>
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
    <edittype type="0" name="refdoss"/>
    <edittype type="3" name="renseignements">
      <valuepair key="inconnu" value="inconnu"/>
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
    <edittype type="0" name="surface"/>
    <edittype type="5" min="1" step="1" name="taille" max="100"/>
    <edittype type="3" name="type_infiltration">
      <valuepair key="irrigation" value="irrigation"/>
      <valuepair key="irrigation végétaux" value="irrigation végétaux"/>
      <valuepair key="lit" value="lit"/>
      <valuepair key="noues" value="noues"/>
      <valuepair key="tranchées" value="tranchées"/>
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
    <actionsetting action="http://www.google.it/?q=[% &quot;poseur&quot; %]" capture="0" type="5" name="Recherche web poseur"/>
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
