<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="1.7.4-Wroclaw" minimumScale="0" maximumScale="1e+08" hasScaleBasedVisibilityFlag="0">
  <transparencyLevelInt>255</transparencyLevelInt>
  <renderer-v2 symbollevels="0" type="RuleRenderer" firstrule="0">
    <rules>
      <rule scalemaxdenom="0" description="" filter="typ_dispr = 'puits perdu'  AND accessible = 'non'" symbol="0" scalemindenom="0" label="puits perdu"/>
      <rule scalemaxdenom="0" description="" filter="typ_dispr = 'puits perdu' AND accessible = 'oui'" symbol="1" scalemindenom="0" label="puits perdu visible"/>
      <rule scalemaxdenom="0" description="" filter="typ_dispr = 'puits d''infiltration'  AND accessible = 'oui'  AND autorisat  = 'oui'" symbol="2" scalemindenom="0" label="puits infiltration autorisé"/>
      <rule scalemaxdenom="0" description="" filter="typ_dispr = 'puits d''infiltration'  AND accessible = 'non'" symbol="3" scalemindenom="0" label="puits d'infiltration non visible"/>
      <rule scalemaxdenom="0" description="" filter="typ_dispr = 'destination inconnue'" symbol="4" scalemindenom="0" label="destination inconnue"/>
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
    <edittype type="0" name="REFDOSS"/>
    <edittype unchecked="non" type="7" checked="oui" name="accessible"/>
    <edittype type="0" name="angle"/>
    <edittype type="5" min="1800" step="5" name="annee_pose" max="2100"/>
    <edittype type="3" name="autorisat">
      <valuepair key="autorisation inconnue" value="autorisation inconnue"/>
      <valuepair key="autorisé" value="autorisé"/>
      <valuepair key="non autorisé" value="non autorisé"/>
    </edittype>
    <edittype type="12" name="comments"/>
    <edittype type="13" name="cree_le"/>
    <edittype type="0" name="ident"/>
    <edittype type="0" name="largeur"/>
    <edittype type="13" name="modifie_le"/>
    <edittype type="8" name="photo1"/>
    <edittype type="0" name="profondeur"/>
    <edittype type="0" name="ref_auto_1"/>
    <edittype type="0" name="ref_autori"/>
    <edittype type="0" name="saisie_par"/>
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
  <aliases/>
  <attributeactions/>
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
