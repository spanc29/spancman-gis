<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="1.7.4-Wroclaw" minimumScale="0" maximumScale="1e+08" hasScaleBasedVisibilityFlag="0">
  <transparencyLevelInt>255</transparencyLevelInt>
  <renderer-v2 attr="pieces" symbollevels="0" type="categorizedSymbol">
    <categories>
      <category symbol="0" value="cuisine" label="cuisine"/>
      <category symbol="1" value="salle d'eau" label="salle d'eau"/>
      <category symbol="2" value="WC" label="WC"/>
      <category symbol="3" value="salon" label="salon"/>
      <category symbol="4" value="salle à manger" label="salle à manger"/>
      <category symbol="5" value="séjour" label="séjour"/>
      <category symbol="6" value="chambre" label="chambre"/>
      <category symbol="7" value="autre" label="autre pièce"/>
      <category symbol="8" value="pp" label="piéce principale"/>
    </categories>
    <symbols>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="0">
        <layer pass="0" class="SvgMarker" locked="1">
          <prop k="angle" v="0"/>
          <prop k="name" v="/pieces/p_cuisine.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="3"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="1">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="name" v="/pieces/p_salle_de_bains.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="3"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="2">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="name" v="/pieces/p_wc.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="3"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="3">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="name" v="/pieces/p_salon.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="3"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="4">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="name" v="/pieces/p_salle_a_manger.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="3"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="5">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="name" v="/pieces/p_sejour.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="3"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="6">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="name" v="/pieces/p_chambre.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="3"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="7">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="name" v="/pieces/p_autre.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="3"/>
        </layer>
      </symbol>
      <symbol outputUnit="MapUnit" alpha="1" type="marker" name="8">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="name" v="/pieces/p_pp.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="3"/>
        </layer>
      </symbol>
    </symbols>
    <rotation field=""/>
    <sizescale field=""/>
  </renderer-v2>
  <customproperties/>
  <displayfield>etage</displayfield>
  <label>0</label>
  <labelattributes>
    <label fieldname="" text="Étiquette"/>
    <family fieldname="" name="MS Shell Dlg 2"/>
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
    <edittype type="0" name="REFDOSS"/>
    <edittype type="0" name="angle"/>
    <edittype type="0" name="bati_id"/>
    <edittype type="0" name="comments"/>
    <edittype type="13" name="cree_le"/>
    <edittype unchecked="0" type="7" checked="1" name="est_PP"/>
    <edittype type="5" min="0" step="1" name="etage" max="20"/>
    <edittype unchecked="0" type="7" checked="1" name="genere_EU"/>
    <edittype type="13" name="modifie_le"/>
    <edittype type="0" name="nom"/>
    <edittype type="8" name="photo1"/>
    <edittype type="4" name="pieces"/>
    <edittype type="2" name="saisie_par"/>
  </edittypes>
  <editform></editform>
  <editforminit></editforminit>
  <annotationform>.</annotationform>
  <aliases>
    <alias field="bati_id" index="1" name="référence bâtiment"/>
    <alias field="nom" index="3" name="identification"/>
    <alias field="pieces" index="2" name="type de pièces"/>
  </aliases>
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
