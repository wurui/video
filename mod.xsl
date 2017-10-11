<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.video">
        <xsl:param name="src">http://v.oxm1.cc/video/smct-v10.mp4</xsl:param>
        <xsl:param name="bgimage">http://i.oxm1.cc/uploads/git/wurui/img/2aapw448cTj8mgxhhgRtnv3Ag70-501.png</xsl:param>
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-video" ox-mod="video">
            <xsl:if test="$src and $src !='' ">
                <video preload="none" src="{$src}" controls="controls" width="100%">
                    <xsl:if test="$bgimage and $bgimage!=''">
                        <xsl:attribute name="style">background:url(<xsl:value-of select="$bgimage"/>) no-repeat center center;background-size:cover;</xsl:attribute>
                    </xsl:if>
                </video>
            </xsl:if>
        </div>
    </xsl:template>
</xsl:stylesheet>
