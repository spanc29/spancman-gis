<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="1.8.0-Lisboa" minimumScale="0" maximumScale="1e+08" hasScaleBasedVisibilityFlag="0">
  <transparencyLevelInt>255</transparencyLevelInt>
  <renderer-v2 attr="typ_regard" symbollevels="0" type="categorizedSymbol">
    <categories>
      <category symbol="0" value="" label=""/>
      <category symbol="1" value="borgne" label="borgne"/>
      <category symbol="2" value="bouclage" label="bouclage"/>
      <category symbol="3" value="répartition" label="répartition"/>
      <category symbol="4" value="collecte" label="collecte"/>
      <category symbol="5" value="contrôle" label="contrôle"/>
      <category symbol="6" value="inconnu" label="inconnu"/>
      <category symbol="7" value="non accessible" label="non accessible"/>
      <category symbol="8" value="prélèvements" label="prélèvements"/>
      <category symbol="9" value="simple" label="simple"/>
      <category symbol="10" value="siphoïde" label="siphoïde"/>
      <category symbol="11" value="té de visite" label="té de visite"/>
      <category symbol="12" value="tranquilisation" label="tranquilisation"/>
    </categories>
    <symbols>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="0">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.5"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="1">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="85,170,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="rectangle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.5"/>
        </layer>
        <layer pass="1" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="85,170,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.5"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="10">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="85,170,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="rectangle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.8"/>
        </layer>
        <layer pass="1" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="fill" v="#000000"/>
          <prop k="name" v="/regards/siphon.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="outline" v="#000000"/>
          <prop k="outline-width" v="1"/>
          <prop k="size" v="0.8"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="11">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="fill" v="#000000"/>
          <prop k="name" v="/regards/te_visite.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="outline" v="#000000"/>
          <prop k="outline-width" v="1"/>
          <prop k="size" v="0.5"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="12">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="85,170,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="rectangle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.5"/>
        </layer>
        <layer pass="1" class="SimpleMarker" locked="0">
          <prop k="angle" v="180"/>
          <prop k="color" v="0,85,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="arrow"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.5"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="2">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="85,170,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="rectangle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.5"/>
        </layer>
        <layer pass="1" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="170,255,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="pentagon"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.5"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="3">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="114,178,215,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="rectangle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="1"/>
        </layer>
        <layer pass="1" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,0,0,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="cross2"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="1"/>
        </layer>
        <layer pass="2" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,0,0,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="cross"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="1"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="4">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="154,199,224,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="rectangle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.5"/>
        </layer>
        <layer pass="1" class="SimpleMarker" locked="0">
          <prop k="angle" v="90"/>
          <prop k="color" v="0,0,127,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="filled_arrowhead"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.5"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="5">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="85,170,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="rectangle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.5"/>
        </layer>
        <layer pass="1" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="85,170,127,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="diamond"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.5"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="6">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="150,150,150,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="rectangle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.5"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="7">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="85,170,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="rectangle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.5"/>
        </layer>
        <layer pass="1" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,0,0,255"/>
          <prop k="color_border" v="255,0,0,255"/>
          <prop k="name" v="cross2"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="1.2"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="8">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="85,170,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="rectangle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="1"/>
        </layer>
        <layer pass="1" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="fill" v="#000000"/>
          <prop k="name" v="/regards/becher.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="outline" v="#000000"/>
          <prop k="outline-width" v="1"/>
          <prop k="size" v="0.8"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="9">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="85,170,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="rectangle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.5"/>
        </layer>
      </symbol>
    </symbols>
    <source-symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="0">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="85,170,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="rectangle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="0.5"/>
        </layer>
      </symbol>
    </source-symbol>
    <colorramp type="gradient" name="[source]">
      <prop k="color1" v="247,251,255,255"/>
      <prop k="color2" v="8,48,107,255"/>
      <prop k="stops" v="0.13;222,235,247,255:0.26;198,219,239,255:0.39;158,202,225,255:0.52;107,174,214,255:0.65;66,146,198,255:0.78;33,113,181,255:0.9;8,81,156,255"/>
    </colorramp>
    <rotation field="angle"/>
    <sizescale field="taille"/>
  </renderer-v2>
  <customproperties/>
  <displayfield>typ_regard</displayfield>
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
    <edittype type="3" name="forme">
      <valuepair key="carrée" value="carrée"/>
      <valuepair key="oblongue" value="oblongue"/>
      <valuepair key="rectangulaire" value="rectangulaire"/>
      <valuepair key="ronde" value="ronde"/>
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
    <edittype type="0" name="materiau"/>
    <edittype type="3" name="materiaux">
      <valuepair key="PE" value="PE"/>
      <valuepair key="PEBD" value="PEBD"/>
      <valuepair key="PEHD" value="PEHD"/>
      <valuepair key="PRV" value="PRV"/>
      <valuepair key="PVC" value="PVC"/>
      <valuepair key="acier" value="acier"/>
      <valuepair key="amiante-ciment" value="amiante-ciment"/>
      <valuepair key="autre" value="autre"/>
      <valuepair key="béton" value="béton"/>
      <valuepair key="composite (assemblage)" value="composite"/>
      <valuepair key="fonte" value="fonte"/>
      <valuepair key="grès" value="grès"/>
      <valuepair key="inconnu" value="inconnu"/>
      <valuepair key="plastique inconnu" value="plastique"/>
    </edittype>
    <edittype type="10" name="modifie_le"/>
    <edittype type="5" min="1" step="1" name="nb_entree" max="10"/>
    <edittype type="5" min="0" step="1" name="nb_sortie" max="12"/>
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
    <edittype type="5" min="1" step="1" name="taille" max="100"/>
    <edittype type="3" name="typ_regard">
      <valuepair key="borgne" value="borgne"/>
      <valuepair key="bouclage" value="bouclage"/>
      <valuepair key="collecte" value="collecte"/>
      <valuepair key="contrôle" value="contrôle"/>
      <valuepair key="inconnu" value="inconnu"/>
      <valuepair key="non accessible" value="non accessible"/>
      <valuepair key="prélèvements" value="prélèvements"/>
      <valuepair key="répartition" value="répartition"/>
      <valuepair key="simple" value="simple"/>
      <valuepair key="siphoïde" value="siphoïde"/>
      <valuepair key="tranquilisation" value="tranquilisation"/>
      <valuepair key="té de visite" value="té de visite"/>
    </edittype>
  </edittypes>
  <editform>.</editform>
  <editforminit></editforminit>
  <annotationform>.</annotationform>
  <aliases>
    <alias field="accessible" index="17" name="accessibilité"/>
    <alias field="annee_pose" index="14" name="année de pose"/>
    <alias field="comments" index="12" name="commentaires"/>
    <alias field="cree_le" index="26" name="créé le"/>
    <alias field="ecoulement" index="21" name="écoulement"/>
    <alias field="identif" index="3" name="identifiant"/>
    <alias field="integrite" index="18" name="intégrité"/>
    <alias field="modifie_le" index="27" name="modifié le"/>
    <alias field="proprete" index="19" name="propreté"/>
    <alias field="refdoss" index="1" name="référence dossier"/>
    <alias field="saisie_par" index="28" name="saisie par"/>
    <alias field="securite" index="20" name="sécurité"/>
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
