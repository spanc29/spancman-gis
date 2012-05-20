<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="1.7.4-Wroclaw" minimumScale="0" maximumScale="1e+08" hasScaleBasedVisibilityFlag="0">
  <transparencyLevelInt>255</transparencyLevelInt>
  <renderer-v2 attr="typ_traitt" symbollevels="0" type="categorizedSymbol">
    <categories>
      <category symbol="0" value="filtre à sable vertical drainé" label="filtre à sable vertical drainé"/>
      <category symbol="1" value="filtre à sable vertical non drainé" label="filtre à sable vertical non drainé"/>
      <category symbol="2" value="filtre horizontal" label="filtre horizontal"/>
      <category symbol="3" value="inconnu" label="inconnu"/>
      <category symbol="4" value="lit d'épandage" label="lit d'épandage"/>
      <category symbol="5" value="non classé/hors normes" label="non classé/hors normes"/>
      <category symbol="6" value="tertre" label="tertre"/>
      <category symbol="7" value="tranchées d'épandage" label="tranchées d'épandage"/>
      <category symbol="8" value="tranchées d'épandage dans la pente" label="tranchées d'épandage dans la pente"/>
      <category symbol="9" value="" label=""/>
      <category symbol="10" value="tertre dans la pente" label="tertre dans la pente"/>
      <category symbol="11" value="filtre à sable drainé étanche" label="filtre à sable drainé étanche"/>
    </categories>
    <symbols>
      <symbol outputUnit="MM" alpha="1" type="fill" name="0">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="255,170,0,255"/>
          <prop k="color_border" v="170,0,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="dense4"/>
          <prop k="style_border" v="dash"/>
          <prop k="width_border" v="0.26"/>
        </layer>
        <layer pass="0" class="SVGFill" locked="0">
          <prop k="angle" v="45"/>
          <prop k="svgFile" v="/traitements/fsvd_text2.svg"/>
          <prop k="width" v="20"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="fill" name="1">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="255,170,0,255"/>
          <prop k="color_border" v="170,0,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="dense4"/>
          <prop k="style_border" v="dash"/>
          <prop k="width_border" v="0.3"/>
        </layer>
        <layer pass="0" class="SVGFill" locked="0">
          <prop k="angle" v="45"/>
          <prop k="svgFile" v="/traitements/fsvnd_text2.svg"/>
          <prop k="width" v="20"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="fill" name="10">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="170,170,255,255"/>
          <prop k="color_border" v="170,0,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="dense4"/>
          <prop k="style_border" v="dot"/>
          <prop k="width_border" v="0.3"/>
        </layer>
        <layer pass="0" class="SVGFill" locked="0">
          <prop k="angle" v="45"/>
          <prop k="svgFile" v="/traitements/tertre_pente_text2.svg"/>
          <prop k="width" v="20"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="fill" name="11">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="255,170,0,255"/>
          <prop k="color_border" v="255,0,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="dense4"/>
          <prop k="style_border" v="solid"/>
          <prop k="width_border" v="0.4"/>
        </layer>
        <layer pass="0" class="SVGFill" locked="0">
          <prop k="angle" v="45"/>
          <prop k="svgFile" v="/traitements/fsvd_text2.svg"/>
          <prop k="width" v="20"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="fill" name="2">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="199,133,0,255"/>
          <prop k="color_border" v="170,0,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="horizontal"/>
          <prop k="style_border" v="dash"/>
          <prop k="width_border" v="0.3"/>
        </layer>
        <layer pass="0" class="SVGFill" locked="0">
          <prop k="angle" v="45"/>
          <prop k="svgFile" v="/traitements/fhoriz_text2.svg"/>
          <prop k="width" v="20"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="fill" name="3">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="180,180,180,255"/>
          <prop k="color_border" v="170,0,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="dense4"/>
          <prop k="style_border" v="dash"/>
          <prop k="width_border" v="0.3"/>
        </layer>
        <layer pass="0" class="CentroidFill" locked="0"/>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="fill" name="4">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="214,143,0,255"/>
          <prop k="color_border" v="170,0,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="dense6"/>
          <prop k="style_border" v="dot"/>
          <prop k="width_border" v="0.3"/>
        </layer>
        <layer pass="0" class="SVGFill" locked="0">
          <prop k="angle" v="45"/>
          <prop k="svgFile" v="/traitements/lit_epandage_text2.svg"/>
          <prop k="width" v="20"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="fill" name="5">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="255,170,0,255"/>
          <prop k="color_border" v="170,0,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="dense7"/>
          <prop k="style_border" v="dash"/>
          <prop k="width_border" v="0.26"/>
        </layer>
        <layer pass="0" class="MarkerLine" locked="0">
          <prop k="interval" v="2"/>
          <prop k="offset" v="0"/>
          <prop k="placement" v="interval"/>
          <prop k="rotate" v="1"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="fill" name="6">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="170,170,255,255"/>
          <prop k="color_border" v="170,0,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="dense4"/>
          <prop k="style_border" v="dot"/>
          <prop k="width_border" v="0.3"/>
        </layer>
        <layer pass="0" class="SVGFill" locked="0">
          <prop k="angle" v="45"/>
          <prop k="svgFile" v="/traitements/tertre_text2.svg"/>
          <prop k="width" v="20"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="fill" name="7">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="190,190,190,255"/>
          <prop k="color_border" v="170,0,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="dense7"/>
          <prop k="style_border" v="dash"/>
          <prop k="width_border" v="0.3"/>
        </layer>
        <layer pass="0" class="SVGFill" locked="0">
          <prop k="angle" v="45"/>
          <prop k="svgFile" v="/traitements/tranchee_text1.svg"/>
          <prop k="width" v="20"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="fill" name="8">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="190,190,190,255"/>
          <prop k="color_border" v="170,0,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="dense7"/>
          <prop k="style_border" v="dash"/>
          <prop k="width_border" v="0.26"/>
        </layer>
        <layer pass="0" class="SVGFill" locked="0">
          <prop k="angle" v="45"/>
          <prop k="svgFile" v="/traitements/tranchee_pente_text2.svg"/>
          <prop k="width" v="20"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="fill" name="9">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="180,180,180,255"/>
          <prop k="color_border" v="170,0,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="dense4"/>
          <prop k="style_border" v="dash"/>
          <prop k="width_border" v="0.3"/>
        </layer>
        <layer pass="0" class="CentroidFill" locked="0"/>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="line" name="@0@1">
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
      <symbol outputUnit="MM" alpha="1" type="line" name="@10@1">
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
      <symbol outputUnit="MM" alpha="1" type="line" name="@11@1">
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
      <symbol outputUnit="MM" alpha="1" type="line" name="@1@1">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="color" v="170,0,0,255"/>
          <prop k="customdash" v="5;2"/>
          <prop k="joinstyle" v="round"/>
          <prop k="offset" v="0"/>
          <prop k="penstyle" v="no"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width" v="0.2"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="line" name="@2@1">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="color" v="170,0,0,255"/>
          <prop k="customdash" v="5;2"/>
          <prop k="joinstyle" v="round"/>
          <prop k="offset" v="0"/>
          <prop k="penstyle" v="no"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width" v="0.5"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="marker" name="@3@1">
        <layer pass="0" class="FontMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="chr" v="�"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="font" v="DejaVu Sans"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="3"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="line" name="@4@1">
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
      <symbol outputUnit="MM" alpha="1" type="marker" name="@5@1">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,0,0,255"/>
          <prop k="color_border" v="255,85,0,255"/>
          <prop k="name" v="cross2"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="2"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="line" name="@6@1">
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
      <symbol outputUnit="MM" alpha="1" type="line" name="@7@1">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="color" v="170,0,0,255"/>
          <prop k="customdash" v="5;2"/>
          <prop k="joinstyle" v="round"/>
          <prop k="offset" v="0"/>
          <prop k="penstyle" v="no"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width" v="0.5"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="line" name="@8@1">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="color" v="170,0,0,255"/>
          <prop k="customdash" v="5;2"/>
          <prop k="joinstyle" v="round"/>
          <prop k="offset" v="0"/>
          <prop k="penstyle" v="no"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width" v="0.5"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="marker" name="@9@1">
        <layer pass="0" class="FontMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="chr" v="�"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="font" v="DejaVu Sans"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="3"/>
        </layer>
      </symbol>
    </symbols>
    <source-symbol>
      <symbol outputUnit="MM" alpha="1" type="fill" name="0">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="253,130,188,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="solid"/>
          <prop k="style_border" v="solid"/>
          <prop k="width_border" v="0.26"/>
        </layer>
      </symbol>
    </source-symbol>
    <colorramp type="gradient" name="[source]">
      <prop k="color1" v="254,235,226,255"/>
      <prop k="color2" v="122,1,119,255"/>
      <prop k="stops" v="0.25;251,180,185,255:0.5;247,104,161,255:0.75;197,27,138,255"/>
    </colorramp>
    <rotation field="angle"/>
    <sizescale field=""/>
  </renderer-v2>
  <customproperties/>
  <displayfield>détails</displayfield>
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
    <edittype type="0" name="angle"/>
    <edittype type="0" name="annee_pose"/>
    <edittype type="12" name="comments"/>
    <edittype type="13" name="cree_le"/>
    <edittype type="12" name="détails"/>
    <edittype type="3" name="fonctionmt">
      <valuepair key="bon" value="bon"/>
      <valuepair key="mauvais" value="mauvais"/>
      <valuepair key="moyen" value="moyen"/>
      <valuepair key="ne sais pas" value="ne sais pas"/>
      <valuepair key="non satisfaisant" value="non satisfaisant"/>
      <valuepair key="non vérifié" value="non vérifié"/>
      <valuepair key="sans objet" value="sans objet"/>
      <valuepair key="satisfaisant" value="satisfaisant"/>
    </edittype>
    <edittype type="0" name="ident"/>
    <edittype type="0" name="largeur"/>
    <edittype type="0" name="longueur"/>
    <edittype type="13" name="modifie_le"/>
    <edittype type="8" name="photo1"/>
    <edittype type="0" name="profondeur"/>
    <edittype type="0" name="saisie"/>
    <edittype type="3" name="typ_traitt">
      <valuepair key="filtre horizontal" value="filtre horizontal"/>
      <valuepair key="filtre à sable drainé étanche" value="filtre à sable drainé étanche"/>
      <valuepair key="filtre à sable vertical drainé" value="filtre à sable vertical drainé"/>
      <valuepair key="filtre à sable vertical non drainé" value="filtre à sable vertical non drainé"/>
      <valuepair key="inconnu" value="inconnu"/>
      <valuepair key="lit d'épandage" value="lit d'épandage"/>
      <valuepair key="non classé/hors normes" value="non classé/hors normes"/>
      <valuepair key="tertre" value="tertre"/>
      <valuepair key="tertre dans la pente" value="tertre dans la pente"/>
      <valuepair key="tranchées d'épandage" value="tranchées d'épandage"/>
      <valuepair key="tranchées d'épandage dans la pente" value="tranchées d'épandage dans la pente"/>
    </edittype>
    <edittype type="0" name="volume"/>
  </edittypes>
  <editform>.</editform>
  <editforminit></editforminit>
  <annotationform>.</annotationform>
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
