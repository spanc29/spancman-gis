<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="1.8.0-Lisboa" minimumScale="0" maximumScale="1e+08" hasScaleBasedVisibilityFlag="0">
  <transparencyLevelInt>255</transparencyLevelInt>
  <renderer-v2 symbollevels="0" type="singleSymbol">
    <symbols>
      <symbol outputUnit="MM" alpha="0,8941176470588236" type="marker" name="0">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="fill" v="#000000"/>
          <prop k="name" v="/divers/sondage.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="outline" v="#000000"/>
          <prop k="outline-width" v="1"/>
          <prop k="size" v="5"/>
        </layer>
      </symbol>
    </symbols>
    <rotation field="angle"/>
    <sizescale field="taille"/>
  </renderer-v2>
  <customproperties/>
  <displayfield>gid</displayfield>
  <label>1</label>
  <labelfield>identif</labelfield>
  <labelattributes>
    <label fieldname="identif" text="s"/>
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
    <alignment fieldname="" value="below"/>
    <buffercolor fieldname="" red="255" blue="255" green="255"/>
    <buffersize fieldname="" units="pt" value="1"/>
    <bufferenabled fieldname="" on=""/>
    <multilineenabled fieldname="" on=""/>
    <selectedonly on=""/>
  </labelattributes>
  <edittypes>
    <edittype type="5" min="0" step="15" name="angle" max="360"/>
    <edittype type="2" name="bureau"/>
    <edittype type="12" name="comments"/>
    <edittype type="10" name="cree_le"/>
    <edittype type="13" name="date_realisation"/>
    <edittype type="8" name="docu2"/>
    <edittype type="11" name="gid"/>
    <edittype type="0" name="hydromorphie"/>
    <edittype type="0" name="identif"/>
    <edittype type="10" name="modifie_le"/>
    <edittype type="0" name="nappe"/>
    <edittype type="8" name="photo"/>
    <edittype type="0" name="profondeur"/>
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
    <edittype type="8" name="scan_doc"/>
    <edittype type="5" min="1" step="1" name="taille" max="100"/>
    <edittype type="3" name="type_sondage">
      <valuepair key="cavité naturelle" value="cavité naturelle"/>
      <valuepair key="tariere" value="tariere"/>
      <valuepair key="tracto-pelle" value="tracto-pelle"/>
    </edittype>
  </edittypes>
  <editform>.</editform>
  <editforminit></editforminit>
  <annotationform>.</annotationform>
  <aliases>
    <alias field="comments" index="10" name="commentaires"/>
    <alias field="hydromorphie" index="8" name="hauteur hydromorphie"/>
    <alias field="identif" index="2" name="identifiant"/>
    <alias field="nappe" index="9" name="hauteur nappe"/>
    <alias field="profondeur" index="7" name="prof. atteinte"/>
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
