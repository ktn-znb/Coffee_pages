<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html> 
	        <style>
          table {
            width: 100%;
            border-collapse: collapse;
            border-spacing: 0;
            margin: 20px 0;
            font-size: 16px;
          }
          th {
            background-color: white;
            font-weight: bold;
			font-size: 30px;
			padding: 5px;
          }
		  h2{
				font-size: 30px;
		  }

          td {
            border: 1px solid #ddd;
            padding: 8px;
			font-size: 20px;
          }

          tr:nth-child(even) {
            background-color: #ccd7e4;
          }

          tr:hover {
            background-color: #ddd;
          }
        </style>
      <body>
        <h2>Books</h2>
        <table border="1">
          <tr bgcolor="white">
            <th style="text-align:left">Title</th>
            <th style="text-align:left">Author</th>
            <th style="text-align:left">Release</th>
            <th style="text-align:left">Publisher</th>
            <th style="text-align:left">Price</th>
            <th style="text-align:left">Year</th>
          </tr>
          <xsl:for-each select="books/book">
            <tr>
              <td><xsl:value-of select="title"/></td>
              <td><xsl:value-of select="author"/></td>
              <td><xsl:value-of select="release"/></td>
              <td><xsl:value-of select="publisher"/></td>
              <td><xsl:value-of select="price"/></td>
              <td><xsl:value-of select="year"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
