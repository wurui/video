<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.video">
        <xsl:param name="src"/>
        <xsl:param name="bgimage"/>
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-video" ox-mod="video">
            <xsl:if test="$src and $src !='' ">
                <video src="{$src}" controls="controls" width="100%">
                    <xsl:if test="$bgimage and $bgimage!=''">
                        <xsl:attribute name="style">background:url(<xsl:value-of select="$bgimage"/>) no-repeat center center;background-size:cover;</xsl:attribute>
                    </xsl:if>
                </video>
            </xsl:if>
        </div>
    </xsl:template>
</xsl:stylesheet>
