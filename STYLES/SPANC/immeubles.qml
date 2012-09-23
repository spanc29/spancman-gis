<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="1.8.0-Lisboa" minimumScale="0" maximumScale="1e+08" hasScaleBasedVisibilityFlag="0">
  <transparencyLevelInt>255</transparencyLevelInt>
  <renderer-v2 attr="type_bati" symbollevels="0" type="categorizedSymbol">
    <categories>
      <category symbol="0" value="Bâtiment en dur" label="Bâtiment en dur"/>
      <category symbol="1" value="Construction légère" label="Construction légère"/>
      <category symbol="2" value="" label=""/>
    </categories>
    <symbols>
      <symbol outputUnit="MM" alpha="1" type="fill" name="0">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="170,170,255,255"/>
          <prop k="color_border" v="85,170,255,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="solid"/>
          <prop k="style_border" v="solid"/>
          <prop k="width_border" v="0.26"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="fill" name="1">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="170,170,255,255"/>
          <prop k="color_border" v="170,170,255,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="diagonal_x"/>
          <prop k="style_border" v="solid"/>
          <prop k="width_border" v="0.26"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="fill" name="2">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="170,170,255,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="solid"/>
          <prop k="style_border" v="solid"/>
          <prop k="width_border" v="0.26"/>
        </layer>
      </symbol>
    </symbols>
    <source-symbol>
      <symbol outputUnit="MM" alpha="1" type="fill" name="0">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="173,245,167,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="solid"/>
          <prop k="style_border" v="solid"/>
          <prop k="width_border" v="0.26"/>
        </layer>
      </symbol>
    </source-symbol>
    <colorramp type="gradient" name="[source]">
      <prop k="color1" v="247,251,255,255"/>
      <prop k="color2" v="8,48,107,255"/>
      <prop k="stops" v="0.13;222,235,247,255:0.26;198,219,239,255:0.39;158,202,225,255:0.52;107,174,214,255:0.65;66,146,198,255:0.78;33,113,181,255:0.9;8,81,156,255"/>
    </colorramp>
    <rotation field=""/>
    <sizescale field=""/>
  </renderer-v2>
  <customproperties>
    <property key="labeling" value="pal"/>
    <property key="labeling/addDirectionSymbol" value="false"/>
    <property key="labeling/bufferColorB" value="255"/>
    <property key="labeling/bufferColorG" value="255"/>
    <property key="labeling/bufferColorR" value="255"/>
    <property key="labeling/bufferSize" value="0"/>
    <property key="labeling/dataDefinedProperty0" value=""/>
    <property key="labeling/dataDefinedProperty1" value=""/>
    <property key="labeling/dataDefinedProperty10" value=""/>
    <property key="labeling/dataDefinedProperty11" value=""/>
    <property key="labeling/dataDefinedProperty12" value=""/>
    <property key="labeling/dataDefinedProperty13" value=""/>
    <property key="labeling/dataDefinedProperty14" value=""/>
    <property key="labeling/dataDefinedProperty2" value=""/>
    <property key="labeling/dataDefinedProperty3" value=""/>
    <property key="labeling/dataDefinedProperty4" value=""/>
    <property key="labeling/dataDefinedProperty5" value=""/>
    <property key="labeling/dataDefinedProperty6" value=""/>
    <property key="labeling/dataDefinedProperty7" value=""/>
    <property key="labeling/dataDefinedProperty8" value=""/>
    <property key="labeling/dataDefinedProperty9" value=""/>
    <property key="labeling/decimals" value="0"/>
    <property key="labeling/dist" value="0"/>
    <property key="labeling/distInMapUnits" value="false"/>
    <property key="labeling/enabled" value="true"/>
    <property key="labeling/fieldName" value="gid"/>
    <property key="labeling/fontFamily" value="Droid Sans"/>
    <property key="labeling/fontItalic" value="false"/>
    <property key="labeling/fontSize" value="0.4"/>
    <property key="labeling/fontSizeInMapUnits" value="true"/>
    <property key="labeling/fontStrikeout" value="false"/>
    <property key="labeling/fontUnderline" value="false"/>
    <property key="labeling/fontWeight" value="50"/>
    <property key="labeling/formatNumbers" value="false"/>
    <property key="labeling/isExpression" value="false"/>
    <property key="labeling/labelPerPart" value="false"/>
    <property key="labeling/mergeLines" value="false"/>
    <property key="labeling/minFeatureSize" value="0"/>
    <property key="labeling/obstacle" value="true"/>
    <property key="labeling/placement" value="2"/>
    <property key="labeling/placementFlags" value="6"/>
    <property key="labeling/plussign" value="true"/>
    <property key="labeling/priority" value="5"/>
    <property key="labeling/scaleMax" value="0"/>
    <property key="labeling/scaleMin" value="0"/>
    <property key="labeling/textColorB" value="0"/>
    <property key="labeling/textColorG" value="0"/>
    <property key="labeling/textColorR" value="0"/>
    <property key="labeling/wrapChar" value=""/>
  </customproperties>
  <displayfield>gid</displayfield>
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
    <edittype type="5" min="1800" step="5" name="an_construction" max="2100"/>
    <edittype type="5" min="1800" step="5" name="an_rehabilitation" max="2100"/>
    <edittype type="12" name="comments"/>
    <edittype type="10" name="cree_le"/>
    <edittype type="13" name="date_acte_authentique"/>
    <edittype type="8" name="docu2"/>
    <edittype type="10" name="gid"/>
    <edittype type="0" name="identif"/>
    <edittype type="10" name="modifie_le"/>
    <edittype type="5" min="1" step="1" name="nb_pp" max="100"/>
    <edittype type="8" name="photo"/>
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
    <edittype type="3" name="tx_occupation">
      <valuepair key="1 mois/an" value="1 mois/an"/>
      <valuepair key="10 mois/an" value="10 mois/an"/>
      <valuepair key="11 mois/an" value="11 mois/an"/>
      <valuepair key="2 mois/an" value="2 mois/an"/>
      <valuepair key="3 mois/an" value="3 mois/an"/>
      <valuepair key="4 mois/an" value="4 mois/an"/>
      <valuepair key="5 mois/an" value="5 mois/an"/>
      <valuepair key="6 mois/an" value="6 mois/an"/>
      <valuepair key="7 mois/an" value="7 mois/an"/>
      <valuepair key="8 mois/an" value="8 mois/an"/>
      <valuepair key="9 mois/an" value="9 mois/an"/>
      <valuepair key="permanent" value="permanent"/>
      <valuepair key="qq jours/an" value="qq jours/an"/>
    </edittype>
    <edittype type="0" name="type_bati"/>
    <edittype type="3" name="type_habitat">
      <valuepair key="Annexe bâti" value="Annexe bâti"/>
      <valuepair key="Autre (cf. obs.)" value="Autre (cf. obs.)"/>
      <valuepair key="Local commercial" value="Local commercial"/>
      <valuepair key="Location permanente" value="Location permanente"/>
      <valuepair key="Location saisonnière" value="Location saisonnière"/>
      <valuepair key="Résidence principale" value="Résidence principale"/>
      <valuepair key="Résidence secondaire" value="Résidence secondaire"/>
    </edittype>
  </edittypes>
  <editform></editform>
  <editforminit></editforminit>
  <annotationform>.</annotationform>
  <aliases>
    <alias field="comments" index="11" name="commentaires"/>
    <alias field="cree_le" index="15" name="créé le"/>
    <alias field="identif" index="4" name="identifiant"/>
    <alias field="modifie_le" index="16" name="modifié le"/>
    <alias field="refdoss" index="3" name="référence dossier"/>
    <alias field="saisie_par" index="17" name="saisie par"/>
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
