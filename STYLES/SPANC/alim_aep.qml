<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="1.8.0-Lisboa" minimumScale="0" maximumScale="1e+08" hasScaleBasedVisibilityFlag="0">
  <transparencyLevelInt>255</transparencyLevelInt>
  <renderer-v2 symbollevels="0" type="singleSymbol">
    <symbols>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="0">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="fill" v="#000000"/>
          <prop k="name" v="/aep/compteur_AEP2.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="outline" v="#000000"/>
          <prop k="outline-width" v="1"/>
          <prop k="size" v="1"/>
        </layer>
      </symbol>
    </symbols>
    <rotation field=""/>
    <sizescale field="taille"/>
  </renderer-v2>
  <customproperties/>
  <displayfield>comments</displayfield>
  <label>0</label>
  <labelattributes>
    <label fieldname="" text="Étiquette"/>
    <family fieldname="" name="Sans"/>
    <size fieldname="" units="pt" value="12"/>
    <bold fieldname="" on="0"/>
    <italic fieldname="" on="0"/>
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
    <edittype type="0" name="conso_moyenne"/>
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
    <edittype type="0" name="immeuble_gid"/>
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
    <edittype type="0" name="reference"/>
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
    <edittype type="3" name="typ_alim">
      <valuepair key="AEP privée" value="AEP privée"/>
      <valuepair key="AEP publique" value="AEP publique"/>
      <valuepair key="fontaine" value="fontaine"/>
      <valuepair key="forage" value="forage"/>
      <valuepair key="inconnu" value="inconnu"/>
      <valuepair key="pluvial" value="pluvial"/>
      <valuepair key="puits" value="puits"/>
      <valuepair key="source captée" value="source captée"/>
      <valuepair key="source libre" value="source libre"/>
    </edittype>
  </edittypes>
  <editform></editform>
  <editforminit></editforminit>
  <annotationform>.</annotationform>
  <aliases>
    <alias field="annee_pose" index="9" name="année de pose"/>
    <alias field="comments" index="7" name="commentaires"/>
    <alias field="cree_le" index="15" name="créé le"/>
    <alias field="identif" index="3" name="identifiant"/>
    <alias field="modifie_le" index="16" name="modifié le"/>
    <alias field="refdoss" index="1" name="référence dossier"/>
    <alias field="saisie_par" index="17" name="saisie par"/>
    <alias field="typ_alim" index="4" name="type alimentation"/>
  </aliases>
  <attributeactions>
    <actionsetting action="[% &quot;photo&quot; %]" capture="0" type="5" name="Ouvrir fichier"/>
    <actionsetting action="[% &quot;docu2&quot; %]" capture="0" type="5" name="Ouvrir docu2"/>
    <actionsetting action="QtGui.QMessageBox.information(None, &quot;GID&quot;, &quot;la clef(gid) est [% &quot;gid&quot; %]&quot;)" capture="0" type="1" name="Récupère l'id de l'entité"/>
    <actionsetting action="QtGui.QMessageBox.information(None, &quot;REFDOSS&quot;, &quot;reference dossier :  [% &quot;refdoss&quot; %]&quot;)" capture="0" type="1" name="Valeur REFDOSS"/>
    <actionsetting action="QtGui.QMessageBox.information(None, &quot;date&quot;, &quot;creation le  [% &quot;cree_le&quot; %], modification le [% &quot;modifie_le&quot; %]&quot;)" capture="0" type="1" name="date création objet"/>
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
