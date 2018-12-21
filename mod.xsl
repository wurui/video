<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.video">
        
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-video" ox-mod="video">
            <xsl:variable name="src" select="data/info-news/i[1]/media/i[type = 'video']/src"/>
            <xsl:if test="$src and $src !='' ">
                <video preload="none" src="{$src}" controls="controls" width="100%"></video>
            </xsl:if>
        </div>
    </xsl:template>
</xsl:stylesheet>
