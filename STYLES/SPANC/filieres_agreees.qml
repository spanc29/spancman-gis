<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="1.8.0-Lisboa" minimumScale="0" maximumScale="1e+08" hasScaleBasedVisibilityFlag="0">
  <transparencyLevelInt>255</transparencyLevelInt>
  <renderer-v2 symbollevels="0" type="singleSymbol">
    <symbols>
      <symbol outputUnit="MM" alpha="1" type="marker" name="0">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="172,29,105,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="size" v="2"/>
        </layer>
      </symbol>
    </symbols>
    <rotation field=""/>
    <sizescale field=""/>
  </renderer-v2>
  <customproperties/>
  <displayfield>REFDOSS</displayfield>
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
    <edittype type="8" name="doc_constr"/>
    <edittype type="0" name="modele"/>
    <edittype type="5" min="3" step="1" name="nb_eq_hab" max="200"/>
    <edittype type="0" name="num_agremt"/>
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
