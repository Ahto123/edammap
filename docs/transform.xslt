<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <resources xmlns="http://bio.tools" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://bio.tools biotools-1.4.xsd">

    <xsl:for-each select="root/list/list-item">
      <resource>
        
        <name><xsl:value-of select="name"/></name>
        
        <xsl:if test="homepage != ''">
          <homepage><xsl:value-of select="homepage"/></homepage>
        </xsl:if>

        <xsl:if test="mirror != ''">
          <mirror><xsl:value-of select="mirror"/></mirror>
        </xsl:if>
        
        <xsl:if test="description != ''">
          <description><xsl:value-of select="description"/></description>
        </xsl:if>

        <xsl:for-each select="topic/list-item">
          <xsl:choose>
            <xsl:when test="uri != ''">   
              <topic uri="{uri}"><xsl:value-of select="term"/></topic>
            </xsl:when>
            <xsl:when test="term != ''">
              <topic><xsl:value-of select="term"/></topic>
            </xsl:when>
          </xsl:choose>
        </xsl:for-each>
        

        <xsl:for-each select="function/list-item">
          <function>
            <xsl:for-each select="functionName/list-item">
              <xsl:choose>
                <xsl:when test="uri != ''">   
                  <functionName uri="{uri}"><xsl:value-of select="term"/></functionName>
                </xsl:when>
                <xsl:when test="term != ''">
                  <functionName><xsl:value-of select="term"/></functionName>
                </xsl:when>
              </xsl:choose>
            </xsl:for-each>

            <xsl:if test="functionDescription != ''">
              <functionDescription><xsl:value-of select="functionDescription"/></functionDescription>
            </xsl:if>
            

            <xsl:for-each select="input/list-item">
              <input>
                <xsl:choose>
                  <xsl:when test="dataType/uri != ''">   
                    <dataType uri="{dataType/uri}"><xsl:value-of select="dataType/term"/></dataType>
                  </xsl:when>
                  <xsl:when test="dataType/term != ''">   
                    <dataType><xsl:value-of select="dataType/term"/></dataType>
                  </xsl:when>
                </xsl:choose>
                
                <xsl:for-each select="dataFormat/list-item">
                  <xsl:choose>
                    <xsl:when test="uri != ''">   
                      <dataFormat uri="{uri}"><xsl:value-of select="term"/></dataFormat>
                    </xsl:when>
                    <xsl:when test="term != ''">   
                      <dataFormat><xsl:value-of select="term"/></dataFormat>
                    </xsl:when>
                  </xsl:choose>
                </xsl:for-each>
              </input>
            </xsl:for-each>

            <xsl:for-each select="output/list-item">
              <output>
                <xsl:choose>
                  <xsl:when test="dataType/uri != ''">   
                    <dataType uri="{dataType/uri}"><xsl:value-of select="dataType/term"/></dataType>
                  </xsl:when>
                  <xsl:when test="dataType/term != ''">   
                    <dataType><xsl:value-of select="dataType/term"/></dataType>
                  </xsl:when>
                </xsl:choose>
                
                <xsl:for-each select="dataFormat/list-item">
                  <xsl:choose>
                    <xsl:when test="uri != ''">   
                      <dataFormat uri="{uri}"><xsl:value-of select="term"/></dataFormat>
                    </xsl:when>
                    <xsl:when test="term != ''">   
                      <dataFormat><xsl:value-of select="term"/></dataFormat>
                    </xsl:when>
                  </xsl:choose>
                </xsl:for-each>
              </output>
            </xsl:for-each>
          </function>
        </xsl:for-each>


        <docs>
          <xsl:if test="docs/docsHome != ''">
            <docsHome><xsl:value-of select="docs/docsHome"/></docsHome>
          </xsl:if>
          <xsl:if test="docs/docsGithub != ''">
            <docsGithub><xsl:value-of select="docs/docsGithub"/></docsGithub>
          </xsl:if>
        </docs>
        
        <publications>
          <xsl:if test="publications/publicationsPrimaryID != ''">
            <publicationsPrimaryID><xsl:value-of select="publications/publicationsPrimaryID"/></publicationsPrimaryID>
          </xsl:if>
          <xsl:if test="publications/publicationsOtherID != ''">
            <publicationsOtherID><xsl:value-of select="publications/publicationsOtherID"/></publicationsOtherID>
          </xsl:if>
        </publications>

      </resource>
    </xsl:for-each>

  </resources>
</xsl:template>
</xsl:stylesheet>

