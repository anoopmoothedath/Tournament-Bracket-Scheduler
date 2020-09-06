<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                              xmlns:xlink="http://www.w3.org/1999/xlink"
                              exclude-result-prefixes="xlink">
                              <xsl:output method="html"/> 
    <xsl:template match="/">
        <html>
            <head>
                <title>Tournaments Information</title>
                <style>
                    @font-face {
                    font-family: "SlateForOnePlus-Bold";
                    src: url("Fonts/SlateForOnePlus-Bold.ttf");
                    }

                    @font-face {
                    font-family: "SlateForOnePlus-Medium";
                    src: url("Fonts/SlateForOnePlus-Medium.ttf");
                    }

                    @font-face {
                    font-family: "OpenSans-ExtraBold";
                    src: url("Fonts/OpenSans-ExtraBold.ttf");
                    }
                </style>
            </head>
            <body style="font-family: SlateForOnePlus-Medium;">
                <h1 align="center" font-family="SlateForOnePlus-Bold">Upcoming Tournaments</h1> 
                <xsl:value-of select="/tournaments/tournament/navpage/@xlink:href"  xmlns:x-link="http://www.w3.org/1999/xlink"/>    
                <xsl:for-each select = "/tournaments/*">
                    <div style="background-color:#a8a58aAA; padding:15px; border-radius:5px; margin-left: 190px; margin-right: 190px; margin-bottom: 30px;">
                        <div style="background-color:#61300b ;color:white;padding:4px; text-align: center;">
                            <span style="font-weight:bold; font-size: 24px;"><xsl:value-of select="title"/></span> <!--Accessing by specifying note location-->
                            </div>

                            <div style="margin-bottom:1em;font-size:10pt; 
                            background-color:#98957aCC; border-bottom-right-radius:10px; 
                            border-bottom-left-radius:10px; padding:20px;">
                            <p>
                            <xsl:if test="image">
                            <center>
                                <img style="width:500px; padding-bottom: 10px;">
                                    <xsl:attribute name="src"> <!--Accessing by specifying node type-->
                                        ../Images/tournament_posters/<xsl:value-of select="image"/>
                                    </xsl:attribute>
                                </img>
                            </center>    
                            </xsl:if>                                       
                            <span style="font-size: 18px; padding: 3px;"><xsl:value-of select="description"/></span>
                            </p>
                        </div>
                    </div>
                </xsl:for-each>     

                <h1 align="center" font-family="SlateForOnePlus-Bold">Trending All over the world</h1>
                <div style="background-color:#a8a58aAA; padding:15px; border-radius:5px; margin-left: 190px; margin-right: 190px; margin-bottom: 30px;">
                        <div style="background-color:#61300b ;color:white;padding:4px; text-align: center;">
                            <span style="font-weight:bold; font-size: 24px;"><xsl:value-of select="/tournaments/tournament[6]/title"/></span> <!--Accessing by specifying the predicates-->
                            </div>

                            <div style="margin-bottom:1em;font-size:10pt; 
                            background-color:#98957aCC; border-bottom-right-radius:10px; 
                            border-bottom-left-radius:10px; padding:20px;">
                            <p>
                            <xsl:if test="/tournaments/tournament[6]/image">
                            <center>
                                <img style="width:500px; padding-bottom: 10px;">
                                    <xsl:attribute name="src"> <!--Accessing by specifying node type-->
                                        ../Images/tournament_posters/<xsl:value-of select="/tournaments/tournament[6]/image"/>
                                    </xsl:attribute>
                                </img>
                            </center>    
                            </xsl:if>                                       
                            </p>
                        </div>
                    </div>

            </body>
        </html> 
    </xsl:template> 
</xsl:stylesheet> 
