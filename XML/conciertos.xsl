<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Mi Estilos Musicales</title>
                <link rel="stylesheet" type="text/css" href="./CSS/index.css"/>
            </head>
            <body>
                <script src="./JAVAS/codigoFormulario.js"></script>
                <header>
                    <div class="header"><h1 class="header">Mis estilos musicales</h1></div>
                    <div title="Sobre Mí" class="perfil"><a href=""><img class="fotoperfil" src="./IMGS/fotoperfil.PNG"/></a></div>
                </header>
                <nav>
                    <ul>
                        <li><a href="./HTML/pop.html">POP</a></li>
                        <li><a href="./HTML/rock.html">ROCK</a></li>
                        <li><a href="">RAP</a></li>
                        <li><a href="">TRAP</a></li>
                        <li><a href="">HIPHOP</a></li>
                    </ul>	
                </nav>
                <div class="contenedor">
                    <section>
                        <article class="imagen"><img class="foto" src="./IMGS/concierto2.jpg"/>
                        </article>
                        <article><h1>Conciertos</h1>
                            <table border="1">
                                <tr bgcolor="red">
                                    <th>Nombre</th>
                                    <th>Año</th>
                                    <th>Aforo</th>
                                    <th>Lugar</th>
                                </tr>
                                <xsl:for-each select="conciertos/concierto">
                                    <tr>
                                        <td><xsl:value-of select="Nombre" /></td>
                                        <td><xsl:value-of select="Año" /></td>
                                        <td><xsl:value-of select="Aforo" /></td>
                                        <td><xsl:value-of select="Lugar" /></td>
                                    </tr>
                                </xsl:for-each>
                            </table>
                        </article>
                        
                    </section>
                    <aside>
                        <ul class="aside">
                            <li class="aside"><a href="./HTML/pop.html">POP</a></li>
                            <li class="aside"><a href="./HTML/rock.html">ROCK</a></li>
                            <li class="aside"><a href="">RAP</a></li>
                            <li class="aside"><a href="">TRAP</a></li>
                            <li class="aside"><a href="">HIPHOP</a></li>
                        </ul>
                    </aside>
                </div>
                <footer>
                    <h1>¿Quieres mandar tu opinión?</h1>
                    <div class="footer">		<table>
                        <tr>
                            <td><h2>Tu nombre:</h2></td>
                            <td><input id="nombre" type="text" name="alias" placeholder="Tu nombre"/></td>
                        </tr>
                        <tr>
                            <td><h2>Tu mensaje:</h2></td>
                            <td><textarea id="textarea" rows="4" cols="50" name="texto" placeholder="¿En qué piensas?"></textarea></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input onclick="popup()" type="submit" id="enviar" name="" value="Envialo!"/></td>
                        </tr>
                    </table></div>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>