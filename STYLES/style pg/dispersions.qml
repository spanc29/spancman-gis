<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="1.7.4-Wroclaw" minimumScale="0" maximumScale="1e+08" hasScaleBasedVisibilityFlag="0">
  <transparencyLevelInt>255</transparencyLevelInt>
  <renderer-v2 symbollevels="0" type="RuleRenderer" firstrule="0">
    <rules>
      <rule scalemaxdenom="0" description="" filter="typ_dispr = 'puits perdu'  AND accessible = 'non'" symbol="0" scalemindenom="0" label="puits perdu"/>
      <rule scalemaxdenom="0" description="" filter="typ_dispr = 'puits perdu' AND accessible = 'oui'" symbol="1" scalemindenom="0" label="puits perdu visible"/>
      <rule scalemaxdenom="0" description="" filter="typ_dispr = 'puits d''infiltration'  AND accessible = 'oui'  AND autorisat  = 'oui'" symbol="2" scalemindenom="0" label="puits infiltration autorisé"/>
      <rule scalemaxdenom="0" description="" filter="typ_dispr = 'puits d''infiltration'  AND accessible = 'non'" symbol="3" scalemindenom="0" label="puits d'infiltration non visible"/>
      <rule scalemaxdenom="0" description="" filter="typ_dispr = 'rejet direct'  AND autorisat = 'oui'" symbol="4" scalemindenom="0" label="rejet autorisé"/>
      <rule scalemaxdenom="0" description="" filter="typ_dispr = 'rejet direct' AND autorisat = 'non'" symbol="5" scalemindenom="0" label="rejet non autorisé"/>
      <rule scalemaxdenom="0" description="" filter="typ_dispr = 'rejet autorisation non connue'" symbol="6" scalemindenom="0" label="autorisation rejet inconnue"/>
      <rule scalemaxdenom="0" description="" filter="typ_dispr = 'destination inconnue'" symbol="7" scalemindenom="0" label="destination inconnue"/>
    </rules>
    <symbols>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="0">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="name" v="/dispersion/puits_perdu_non_acces.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="3"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="1">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="name" v="/dispersion/puits_perdu_1a.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="3"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="2">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="name" v="/dispersion/puits_infiltration_1a.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="3"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="3">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="name" v="/dispersion/puits_infiltration_na.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="3"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="4">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="name" v="/dispersion/rejet_autorise2.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="3"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="5">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="name" v="/dispersion/rejet_non_autorise2.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="3"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="6">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="name" v="/dispersion/rejet_autoris_inconnue2.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="3"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="7">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="name" v="/dispersion/destinat_inconnue.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="2"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="marker" name="default">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="118,66,132,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="2"/>
        </layer>
      </symbol>
    </symbols>
  <rotation field="angle"/>
  <sizescale field="taille"/>
  </renderer-v2>
  <customproperties/>
  <displayfield>ident</displayfield>
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
    <edittype type="10" name="gid"/>
    <edittype type="0" name="refdoss"/>
    <edittype type="0" name="identif"/>
    <edittype type="12" name="comments"/>
    <edittype type="0" name="marq_constructeur"/>
    <edittype type="5" min="1800" step="5" name="annee_pose" max="2200"/>
    <edittype type="0" name="poseur"/>
    <edittype type="3" name="renseignements">
      <valuepair key="inconnu" value="inconnu"/>
      <valuepair key="sur document(s)" value="sur document(s)"/>
      <valuepair key="sur déclaration" value="sur déclaration"/>
      <valuepair key="sur facture" value="sur facture"/>
      <valuepair key="sur observations/mesures" value="sur observations/mesures"/>
      <valuepair key="sur photo" value="sur photo"/>
      <valuepair key="sur plan" value="sur plan"/>
    </edittype>
    <edittype type="3" name="accessible">
      <valuepair key="accessible" value="accessible"/>
      <valuepair key="accès difficile" value="accès difficile"/>
      <valuepair key="accès impossible" value="accès impossible"/>
      <valuepair key="accès trop profond" value="accès trop profond"/>
      <valuepair key="découvert pour contrôle" value="découvert pour contrôle"/>
      <valuepair key="engin nécessaire" value="engin nécessaire"/>
      <valuepair key="non renseigné" value="non renseigné"/>
    </edittype>
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
    <edittype type="3" name="securite">
      <valuepair key="danger imminent" value="danger imminent"/>
      <valuepair key="non évaluée" value="non évaluée"/>
      <valuepair key="risques faibles" value="risques faibles"/>
      <valuepair key="sécurisé" value="sécurisé"/>
    </edittype>
    <edittype type="3" name="ecoulement">
      <valuepair key="non renseigné" value="non renseigné"/>
      <valuepair key="pas d'écoulement (stagnation)" value="pas d'écoulement (stagnation)"/>
      <valuepair key="sens non visible" value="sens non visible"/>
      <valuepair key="écoulement correct" value="écoulement correct"/>
      <valuepair key="écoulement ralenti" value="écoulement ralenti"/>
      <valuepair key="écoulement trop rapide" value="écoulement trop rapide"/>
      <valuepair key="écoulement à contre-sens" value="écoulement à contre-sens"/>
    </edittype>
    <edittype type="0" name="largeur"/>
    <edittype type="0" name="longueur"/>
    <edittype type="0" name="haut_prof"/>
    <edittype type="5" min="0" step="15" name="angle" max="360"/>
    <edittype type="5" min="0" step="1" name="taille" max="100"/>
    <edittype type="10" name="cree_le"/>
    <edittype type="10" name="modifie_le"/>
    <edittype type="8" name="photo1"/>
    <edittype type="8" name="photo2"/>
    <edittype type="0" name="saisie_par"/>
    <edittype unchecked="non" type="7" checked="oui" name="autorisat"/>
    <edittype type="0" name="profondeur"/>
    <edittype type="3" name="typ_dispr">
      <valuepair key="destination inconnue" value="destination inconnue"/>
      <valuepair key="inconnu" value="inconnu"/>
      <valuepair key="puisard" value="puisard"/>
      <valuepair key="puits d'infiltration" value="puits d'infiltration"/>
      <valuepair key="puits perdu" value="puits perdu"/>
      <valuepair key="rejet autorisation non connue" value="rejet autorisation non connue"/>
      <valuepair key="rejet autorisé" value="rejet autorisé"/>
      <valuepair key="rejet direct" value="rejet direct"/>
      <valuepair key="rejet non autorisé" value="rejet non autorisé"/>
    </edittype>
  </edittypes>
  <editform>.</editform>
  <editforminit></editforminit>
  <annotationform>.</annotationform>
    <aliases>
    <alias field="annee_pose" index="6" name="année de pose"/>
    <alias field="comments" index="4" name="commentaires"/>
    <alias field="cree_le" index="21" name="créé le"/>
    <alias field="ecoulement" index="13" name="écoulement"/>
    <alias field="identif" index="2" name="identifiant"/>
    <alias field="modifie_le" index="22" name="modifié le"/>
    <alias field="poseur" index="7" name="terrassier"/>
    <alias field="refdoss" index="1" name="référence dossier"/>
    <alias field="saisie_par" index="23" name="saisie par"/>
  </aliases>
  <attributeactions>
    <actionsetting action="[% &quot;photo1&quot; %]" capture="0" type="5" name="Ouvrir fichier"/>
    <actionsetting action="[% &quot;photo2&quot; %]" capture="0" type="5" name="Ouvrir fichier2"/>
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
