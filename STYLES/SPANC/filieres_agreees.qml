<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="1.8.0-Lisboa" minimumScale="0" maximumScale="1e+08" hasScaleBasedVisibilityFlag="0">
  <transparencyLevelInt>255</transparencyLevelInt>
  <renderer-v2 attr="typ_cuve" symbollevels="0" type="categorizedSymbol">
    <categories>
      <category symbol="0" value="" label=""/>
      <category symbol="1" value="inconnue" label="inconnue"/>
      <category symbol="2" value="ronde" label="ronde"/>
      <category symbol="3" value="rectangulaire" label="rectangulaire"/>
      <category symbol="4" value="oblongue" label="oblongue"/>
    </categories>
    <symbols>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="0">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="247,251,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="2"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="1">
        <layer pass="0" class="EllipseMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="fill_color" v="150,150,150,255"/>
          <prop k="fill_color_field" v=""/>
          <prop k="height_field" v="longueur"/>
          <prop k="outline_color" v="85,0,0,255"/>
          <prop k="outline_color_field" v=""/>
          <prop k="outline_width" v="0.1"/>
          <prop k="outline_width_field" v=""/>
          <prop k="rotation_field" v="angle"/>
          <prop k="symbol_height" v="2"/>
          <prop k="symbol_name" v="circle"/>
          <prop k="symbol_name_field" v=""/>
          <prop k="symbol_width" v="2"/>
          <prop k="width_field" v="largeur"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="2">
        <layer pass="0" class="EllipseMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="fill_color" v="255,255,255,255"/>
          <prop k="fill_color_field" v=""/>
          <prop k="height_field" v="longueur"/>
          <prop k="outline_color" v="85,0,0,255"/>
          <prop k="outline_color_field" v=""/>
          <prop k="outline_width" v="0.1"/>
          <prop k="outline_width_field" v=""/>
          <prop k="rotation_field" v="angle"/>
          <prop k="symbol_height" v="2"/>
          <prop k="symbol_name" v="circle"/>
          <prop k="symbol_name_field" v=""/>
          <prop k="symbol_width" v="2"/>
          <prop k="width_field" v="largeur"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="3">
        <layer pass="0" class="EllipseMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="fill_color" v="255,255,255,255"/>
          <prop k="fill_color_field" v=""/>
          <prop k="height_field" v="longueur"/>
          <prop k="outline_color" v="85,0,0,255"/>
          <prop k="outline_color_field" v=""/>
          <prop k="outline_width" v="0.1"/>
          <prop k="outline_width_field" v=""/>
          <prop k="rotation_field" v="angle"/>
          <prop k="symbol_height" v="2"/>
          <prop k="symbol_name" v="rectangle"/>
          <prop k="symbol_name_field" v=""/>
          <prop k="symbol_width" v="2"/>
          <prop k="width_field" v="largeur"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="4">
        <layer pass="0" class="EllipseMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="fill_color" v="255,255,255,255"/>
          <prop k="fill_color_field" v=""/>
          <prop k="height_field" v="longueur"/>
          <prop k="outline_color" v="85,0,0,255"/>
          <prop k="outline_color_field" v=""/>
          <prop k="outline_width" v="0.1"/>
          <prop k="outline_width_field" v=""/>
          <prop k="rotation_field" v="angle"/>
          <prop k="symbol_height" v="1"/>
          <prop k="symbol_name" v="circle"/>
          <prop k="symbol_name_field" v=""/>
          <prop k="symbol_width" v="2"/>
          <prop k="width_field" v="largeur"/>
        </layer>
      </symbol>
    </symbols>
    <source-symbol>
      <symbol outputUnit="MM" alpha="1" type="marker" name="0">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="158,183,113,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="2"/>
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
  <displayfield>num_agrement</displayfield>
  <label>0</label>
  <labelattributes>
    <label fieldname="" text="Étiquette"/>
    <family fieldname="" name="Droid Sans"/>
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
    <edittype unchecked="non" type="7" checked="oui" name="ACCESSIBLE"/>
    <edittype type="5" min="0" step="0.5" name="ANGLE" max="360"/>
    <edittype type="5" min="1980" step="5" name="ANNEE_POSE" max="2200"/>
    <edittype type="12" name="COMMENTS"/>
    <edittype type="13" name="CREE_LE"/>
    <edittype type="3" name="ECOULEMENT">
      <valuepair key="bon" value="bon"/>
      <valuepair key="mauvais" value="mauvais"/>
      <valuepair key="moyen" value="moyen"/>
      <valuepair key="ne sais pas" value="ne sais pas"/>
      <valuepair key="non satisfaisant" value="non satisfaisant"/>
      <valuepair key="non vérifié" value="non vérifié"/>
      <valuepair key="sans objet" value="sans objet"/>
      <valuepair key="satisfaisant" value="satisfaisant"/>
    </edittype>
    <edittype type="0" name="IDENT"/>
    <edittype type="3" name="INTEGRITE">
      <valuepair key="bon" value="bon"/>
      <valuepair key="mauvais" value="mauvais"/>
      <valuepair key="moyen" value="moyen"/>
      <valuepair key="ne sais pas" value="ne sais pas"/>
      <valuepair key="non satisfaisant" value="non satisfaisant"/>
      <valuepair key="non vérifié" value="non vérifié"/>
      <valuepair key="sans objet" value="sans objet"/>
      <valuepair key="satisfaisant" value="satisfaisant"/>
    </edittype>
    <edittype type="0" name="MARQ_CONST"/>
    <edittype type="13" name="MODIFIE_LE"/>
    <edittype type="8" name="PHOTO1"/>
    <edittype type="3" name="PROPRETE">
      <valuepair key="bon" value="bon"/>
      <valuepair key="mauvais" value="mauvais"/>
      <valuepair key="moyen" value="moyen"/>
      <valuepair key="ne sais pas" value="ne sais pas"/>
      <valuepair key="non satisfaisant" value="non satisfaisant"/>
      <valuepair key="non vérifié" value="non vérifié"/>
      <valuepair key="sans objet" value="sans objet"/>
      <valuepair key="satisfaisant" value="satisfaisant"/>
    </edittype>
    <edittype type="0" name="REFDOSS"/>
    <edittype type="0" name="SAISIE_PAR"/>
    <edittype type="3" name="SECURITE">
      <valuepair key="bon" value="bon"/>
      <valuepair key="mauvais" value="mauvais"/>
      <valuepair key="moyen" value="moyen"/>
      <valuepair key="ne sais pas" value="ne sais pas"/>
      <valuepair key="non satisfaisant" value="non satisfaisant"/>
      <valuepair key="non vérifié" value="non vérifié"/>
      <valuepair key="sans objet" value="sans objet"/>
      <valuepair key="satisfaisant" value="satisfaisant"/>
    </edittype>
    <edittype type="3" name="TYP_CUVE">
      <valuepair key="oblongue" value="oblongue"/>
      <valuepair key="rectangulaire" value="rectangulaire"/>
      <valuepair key="ronde" value="ronde"/>
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
    <edittype type="5" min="0" step="15" name="angle" max="360"/>
    <edittype type="5" min="2000" step="5" name="annee_pose" max="2100"/>
    <edittype type="12" name="comments"/>
    <edittype type="13" name="cree_le"/>
    <edittype type="8" name="doc_constr"/>
    <edittype type="8" name="doc_constructeur"/>
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
    <edittype type="5" min="0.5" step="0.1" name="haut_prof" max="10"/>
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
    <edittype type="5" min="1" step="1" name="largeur" max="50"/>
    <edittype type="5" min="1" step="1" name="longueur" max="50"/>
    <edittype type="0" name="marq_constructeur"/>
    <edittype type="0" name="modele"/>
    <edittype type="13" name="modifie_le"/>
    <edittype type="5" min="3" step="1" name="nb_eq_hab" max="200"/>
    <edittype type="0" name="num_agrement"/>
    <edittype type="0" name="num_agremt"/>
    <edittype type="8" name="photo"/>
    <edittype type="0" name="poseur"/>
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
    <edittype type="3" name="typ_cuve">
      <valuepair key="inconnue" value="inconnue"/>
      <valuepair key="oblongue" value="oblongue"/>
      <valuepair key="rectangulaire" value="rectangulaire"/>
      <valuepair key="ronde" value="ronde"/>
    </edittype>
    <edittype type="3" name="typ_filiere">
      <valuepair key="autres" value="autres"/>
      <valuepair key="filtres compacts" value="filtres compacts"/>
      <valuepair key="filtres plantés" value="filtres plantés"/>
      <valuepair key="microstations SBR" value="microstations SBR"/>
      <valuepair key="microstations à cultures fixées" value="microstations à cultures fixées"/>
      <valuepair key="microstations à cultures libres" value="microstations à cultures libres"/>
    </edittype>
  </edittypes>
  <editform></editform>
  <editforminit></editforminit>
  <annotationform>.</annotationform>
  <aliases>
    <alias field="annee_pose" index="9" name="année de pose"/>
    <alias field="comments" index="8" name="commentaires"/>
    <alias field="cree_le" index="17" name="créé le"/>
    <alias field="ecoulement" index="13" name="écoulement"/>
    <alias field="identif" index="3" name="identifiant"/>
    <alias field="integrite" index="11" name="intégrité"/>
    <alias field="modifie_le" index="18" name="modifié le"/>
    <alias field="proprete" index="12" name="propreté"/>
    <alias field="refdoss" index="1" name="référence dossier"/>
    <alias field="saisie_par" index="19" name="saisie par"/>
    <alias field="typ_cuve" index="10" name="forme de cuve"/>
    <alias field="typ_filiere" index="4" name="type de filière"/>
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
