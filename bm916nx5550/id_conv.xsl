<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="pb">
            <xsl:value-of select="@id"/>
            <xsl:variable name="elValue" select="."/>
            <xsl:analyze-string select="$elValue" regex="_[0-9][0-9][0-9][0-9]">
                <xsl:matching-substring>
                    <xsl:value-of select="regex-group(5) +3"/>
                </xsl:matching-substring>
            </xsl:analyze-string>
        
    </xsl:template>
</xsl:stylesheet>