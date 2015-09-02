<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="urn:schemas-microsoft-com:office:spreadsheet"
                xmlns:xalan="http://xml.apache.org/xalan"
                xmlns:o="urn:schemas-microsoft-com:office:office"
                xmlns:x="urn:schemas-microsoft-com:office:excel"
                xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
                xmlns:html="http://www.w3.org/TR/REC-html40"
                xmlns:exp="urn:export"
                extension-element-prefixes="xalan"
>
  <xsl:template name="styles">
    <Styles>
      <Style ss:ID="Default" ss:Name="Normal">
        <Alignment ss:Vertical="Bottom"/>
        <Borders/>
        <Font ss:FontName="Arial Cyr" x:CharSet="204"/>
        <Interior/>
        <NumberFormat/>
        <Protection/>
      </Style>
      <Style ss:ID="m235670452">
        <Alignment ss:Horizontal="Left" ss:Vertical="Center" ss:WrapText="1"/>
        <Borders>
          <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
        </Borders>
        <Font ss:FontName="Arial" ss:Color="#000000" ss:Bold="1"/>
        <Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
        <NumberFormat/>
        <Protection/>
      </Style>
      <Style ss:ID="s63">
        <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
        <Borders/>
        <Font ss:FontName="Arial" ss:Size="12" ss:Color="#000000" ss:Bold="1"/>
        <Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
        <NumberFormat/>
        <Protection/>
      </Style>
      <Style ss:ID="s64">
        <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
        <Borders>
          <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
        </Borders>
        <Font ss:FontName="Arial" ss:Color="#000000"/>
        <Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
        <NumberFormat/>
        <Protection/>
      </Style>
      <Style ss:ID="s65">
        <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
        <Borders>
          <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
        </Borders>
        <Font ss:FontName="Arial" ss:Size="8" ss:Color="#000000"/>
        <Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
        <NumberFormat/>
        <Protection/>
      </Style>
      <Style ss:ID="s66">
        <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
        <Borders>
          <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
        </Borders>
        <Font ss:FontName="Arial" ss:Color="#000000"/>
        <Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
        <NumberFormat/>
        <Protection/>
      </Style>
      <Style ss:ID="s67">
        <Alignment ss:Horizontal="Right" ss:Vertical="Top" ss:WrapText="1"/>
        <Borders>
          <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
        </Borders>
        <Font ss:FontName="Arial" ss:Color="#000000"/>
        <Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
        <NumberFormat ss:Format="Fixed"/>
        <Protection/>
      </Style>
      <Style ss:ID="s79">
        <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
        <Borders>
          <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
        </Borders>
        <Font ss:FontName="Arial" ss:Color="#000000"/>
        <Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
        <NumberFormat ss:Format="Fixed"/>
        <Protection/>
      </Style>
      <Style ss:ID="s81">
        <NumberFormat ss:Format="Fixed"/>
      </Style>
      <Style ss:ID="s82">
        <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
        <Borders>
          <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
        </Borders>
        <Font ss:FontName="Arial" ss:Color="#000000"/>
        <Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
        <NumberFormat ss:Format="0%"/>
        <Protection/>
      </Style>
      <Style ss:ID="s83">
        <Alignment ss:Horizontal="Right" ss:Vertical="Top" ss:WrapText="1"/>
        <Borders>
          <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
        </Borders>
        <Font ss:FontName="Arial" ss:Color="#000000"/>
        <Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
        <NumberFormat ss:Format="0%"/>
        <Protection/>
      </Style>
      <Style ss:ID="s84">
        <NumberFormat ss:Format="0%"/>
      </Style>
      <Style ss:ID="s85">
        <Alignment ss:Horizontal="Right" ss:Vertical="Center" ss:WrapText="1"/>
        <Borders>
          <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
          <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
                  ss:Color="#000000"/>
        </Borders>
        <Font ss:FontName="Arial" ss:Color="#000000" ss:Bold="1"/>
        <Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
        <NumberFormat ss:Format="Fixed"/>
        <Protection/>
      </Style>
    </Styles>
  </xsl:template>

  <xsl:template match="/">
    <!-- инструкция для того чтобы редактор понимал, что это spreadsheet -->
    <xsl:processing-instruction name="mso-application">
      <xsl:text>progid="Excel.Sheet"</xsl:text>
    </xsl:processing-instruction>

    <Workbook>
      <DocumentProperties xmlns="urn:schemas-microsoft-com:office:office">
        <LastAuthor>ASh</LastAuthor>
        <Created>2014-01-17T13:25:17Z</Created>
        <Version>15.00</Version>
      </DocumentProperties>
      <OfficeDocumentSettings xmlns="urn:schemas-microsoft-com:office:office">
        <AllowPNG/>
      </OfficeDocumentSettings>
      <ExcelWorkbook xmlns="urn:schemas-microsoft-com:office:excel">
        <WindowHeight>9720</WindowHeight>
        <WindowWidth>22890</WindowWidth>
        <WindowTopX>1110</WindowTopX>
        <WindowTopY>0</WindowTopY>
        <RefModeR1C1/>
        <ProtectStructure>False</ProtectStructure>
        <ProtectWindows>False</ProtectWindows>
      </ExcelWorkbook>
      <xsl:call-template name="styles"/>
      <Worksheet ss:Name="Page 1">
        <Table ss:ExpandedColumnCount="8" ss:ExpandedRowCount="{count(/data/row)+3}" x:FullColumns="1"
               x:FullRows="1" ss:DefaultRowHeight="13.3125">
          <Column ss:AutoFitWidth="0" ss:Width="16.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="198"/>
          <Column ss:AutoFitWidth="0" ss:Width="55.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="85.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="82.5"/>
          <Column ss:StyleID="s84" ss:AutoFitWidth="0" ss:Width="118.5"/>
          <Column ss:StyleID="s81" ss:AutoFitWidth="0" ss:Width="118.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="39.75"/>
          <Row ss:AutoFitHeight="0" ss:Height="30.1875">
            <Cell ss:MergeAcross="7" ss:StyleID="s63"><Data ss:Type="String">Материальное стимулирование работников школы</Data></Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="50">
            <Cell ss:StyleID="s64"><Data ss:Type="String">№</Data></Cell>
            <Cell ss:StyleID="s64"><Data ss:Type="String">Ф.И.О.</Data></Cell>
            <Cell ss:StyleID="s64"><Data ss:Type="String">Табельный номер</Data></Cell>
            <Cell ss:StyleID="s64"><Data ss:Type="String">Должность (специальность профессия)</Data></Cell>
            <Cell ss:StyleID="s64"><Data ss:Type="String">Заработная плата в соответствии с пед. нагрузкой</Data></Cell>
            <Cell ss:StyleID="s82"><Data ss:Type="String">% от пед. нагрузки</Data></Cell>
            <Cell ss:StyleID="s79"><Data ss:Type="String">Сумма</Data></Cell>
          </Row>
          <xsl:apply-templates select="/data/row"/>
          <Row ss:AutoFitHeight="0" ss:Height="19.3125">
            <Cell ss:MergeAcross="5" ss:StyleID="m235670452"><Data ss:Type="String">ИТОГО</Data></Cell>
            <Cell ss:StyleID="s85" ss:Formula="=SUM(R[-{count(/data/row)}]C:R[-1]C)"><Data ss:Type="Number">0</Data></Cell>
          </Row>
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Layout x:Orientation="Landscape"/>
            <PageMargins x:Bottom="0.38" x:Left="0.38" x:Right="0.38" x:Top="0.38"/>
          </PageSetup>
          <Unsynced/>
          <Print>
            <ValidPrinterInfo/>
            <HorizontalResolution>600</HorizontalResolution>
            <VerticalResolution>0</VerticalResolution>
          </Print>
          <Selected/>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>2</ActiveRow>
              <ActiveCol>1</ActiveCol>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
    </Workbook>
  </xsl:template>

  <xsl:template match="row">
    <Row ss:AutoFitHeight="0" ss:Height="13.6875">
      <Cell ss:StyleID="s65"><Data ss:Type="String"><xsl:value-of select="position()"/></Data></Cell>
      <Cell ss:StyleID="s66"><Data ss:Type="String"><xsl:value-of select="@name"/></Data></Cell>
      <Cell ss:StyleID="s64"><Data ss:Type="String"><xsl:value-of select="@tab"/></Data></Cell>
      <Cell ss:StyleID="s64"><Data ss:Type="String"><xsl:value-of select="@post"/></Data></Cell>
      <Cell ss:StyleID="s67"><Data ss:Type="Number"><xsl:value-of select="@value"/></Data></Cell>
      <Cell ss:StyleID="s83"><Data ss:Type="Number">0</Data></Cell>
      <Cell ss:StyleID="s67" ss:Formula="=RC[-2]*RC[-1]"><Data ss:Type="Number">0</Data></Cell>
    </Row>
  </xsl:template>

</xsl:stylesheet>