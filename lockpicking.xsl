<?xml version="1.0" encoding="utf-8"?>

<!-- Inspired by a stylesheet from the tralics project.

  Copyright Inria/Apics (José Grimm) 2006-2007
  Licensed under the CeCILL Free Software Licensing Agreement
  see http://www.cecill.info. 
-->

<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
  xmlns:m="http://www.w3.org/1998/Math/MathML"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:html="http://www.w3.org/1999/xhtml" 
  xmlns="http://www.w3.org/1999/xhtml" 
  exclude-result-prefixes="m html xlink" >

<xsl:import href="cls.xsl"/>
<xsl:import href="thesis.xsl"/>

<xsl:output method='xml' encoding='utf-8' 
  doctype-public='-//W3C//DTD XHTML 1.0 Strict//EN'
  doctype-system='http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd'
/>

<!-- ignore spaces in the elements from the list -->
<xsl:strip-space elements="cell bediteur bauteurs citation UR"/>

<xsl:variable name="prefix">lockpicking</xsl:variable>
<xsl:variable name="split">false</xsl:variable>

<xsl:variable name="TOCname">Table des matières</xsl:variable>
<xsl:variable name="title">Guide to Lock Picking (version Française)</xsl:variable>

</xsl:stylesheet>
<!-- Keep this comment at the end of the file
Local variables:
mode: xml
End:
-->
