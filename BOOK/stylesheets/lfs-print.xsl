<?xml version='1.0' encoding='ISO-8859-1'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                version="1.0">
    <!-- We use FO and FOP as the processor -->
  <xsl:import href="http://docbook.sourceforge.net/release/xsl/1.65.1/fo/docbook.xsl"/>
  <xsl:param name="fop.extensions" select="1"/>
  <xsl:param name="draft.mode" select="'no'"/>

    <!-- Including our others customized templates -->
  <xsl:include href="print/lfs-index.xsl"/>
  <xsl:include href="print/lfs-pagesetup.xsl"/>

    <!-- Paper size required by the publisher -->
  <xsl:param name="paper.type" select="'Cunstommized'"/>
  <xsl:param name="page.width">7.25in</xsl:param>
  <xsl:param name="page.height">9.25in</xsl:param>

    <!-- Printing Style -->
  <xsl:param name="double.sided" select="1"/>
  <xsl:param name="hyphenate">false</xsl:param>
  <xsl:param name="alignment">justify</xsl:param>

    <!-- Font size -->
  <xsl:param name="body.font.master">6</xsl:param>
  <xsl:param name="body.font.size">8pt</xsl:param>

    <!-- TOC stuff -->
  <xsl:param name="generate.toc">
    book      toc
    part      nop
  </xsl:param>
  <xsl:param name="toc.section.depth">1</xsl:param>
  <xsl:param name="generate.section.toc.level" select="-1"></xsl:param>
  <xsl:param name="toc.indent.width" select="18"></xsl:param>

    <!-- Page number in Xref-->
  <xsl:param name="insert.xref.page.number">no</xsl:param>
  <xsl:template match="*" mode="page.citation">
    <xsl:param name="id" select="'???'"/>
    <fo:inline keep-together.within-line="always">
      <!--<xsl:text>[p</xsl:text>-->
      <fo:page-number-citation ref-id="{$id}"/>
      <!--<xsl:text>]</xsl:text>-->
    </fo:inline>
  </xsl:template>

    <!-- Prevent duplicate e-mails in the Acknowledgments pages-->
  <xsl:param name="ulink.show" select="0"/>

    <!-- Sections numbering -->
  <xsl:param name="section.autolabel" select="1"/>
  <xsl:param name="section.label.includes.component.label" select="1"/>

</xsl:stylesheet>
