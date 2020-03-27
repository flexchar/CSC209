<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/collection">
        <html>
            <head>
                <style>
                    html {
                        font-family: BlinkMacSystemFont,-apple-system,Segoe UI,Roboto,Oxygen,Ubuntu,Cantarell,Fira Sans,Droid Sans,Helvetica Neue,Helvetica,Arial,sans-serif;
                    }

                    body {
                        margin: 0;
                        padding: 0;
                    }

                    header {
                        padding: 1rem;
                    }
                    h2 { margin: 0; }

                    a {
                    display: block;
                        text-decoration: none;
                        margin-left: auto;
                    }

                    table {
                        margin: 1rem;

                        border: 1px solid rgba(0,0,0,0.2);
                        border-radius: 3px;
                    }
                    thead {
                        border: 1px solid black;
                    }
                    tr:hover {
                        background-color: rgba(0,0,0,0.05);
                    }
                    tr td, tr th {
                        padding: 10px 4px;
                        border-top: 1px solid rgba(0,0,0,0.05);
                    }

                    footer {
                        display: flex;

                        background-color: white;
                    
                        padding: 1rem 1rem;
                    }
                </style>
            </head>
            <body bgcolor="whitesmoke">
                <header>
                    <h2>Quiz Reference</h2>
                    <small>Be kind and challenge yourself!</small>
                </header>
                <table border="0" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Category</th>
                            <th>Question</th>
                            <th align="right">Answer</th>
                            <th align="center">Points</th>
                        </tr>
                    </thead>
                    <tbody>

                        <xsl:for-each select="question">
                        <xsl:sort select="points"/>
                            <tr>
                                <td align="center">
                                    <xsl:value-of select="title" />
                                </td>
                                <td class="truncate">
                                    <xsl:value-of select="question" />
                                </td>
                                <td align="right">
                                    <xsl:value-of select="answer" />
                                </td>
                                <td align="center">
                                    <xsl:value-of select="points" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
                <footer>
                    <p>Made with 🍌</p>
                    <p style="margin-left: auto;" title="Copyright reserved.">© Lukas Vanagas</p>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>