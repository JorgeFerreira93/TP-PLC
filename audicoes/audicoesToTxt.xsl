<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="text"/>
    
    <xsl:template match="/">
        <xsl:result-document href="{/audicao/metadata[1]/id[1]}.txt">
            <xsl:apply-templates select="audicao/metadata"/>
            <xsl:apply-templates select="audicao/atuacoes"></xsl:apply-templates>
        </xsl:result-document>
    </xsl:template>
    
    <xsl:template match="audicao/metadata">
        <xsl:text>METADATA
ID </xsl:text><xsl:value-of select="id"/><xsl:text>
TITULO "</xsl:text><xsl:value-of select="titulo"/><xsl:text>"
SUBTITULO "</xsl:text><xsl:value-of select="subtitulo"/><xsl:text>"
TEMA "</xsl:text><xsl:value-of select="tema"/><xsl:text>"
DATA "</xsl:text><xsl:value-of select="data"/><xsl:text>"
HORA "</xsl:text><xsl:value-of select="hora"/><xsl:text>"
LOCAL "</xsl:text><xsl:value-of select="local"/><xsl:text>"
ORGANIZADOR "</xsl:text><xsl:value-of select="organizador"/><xsl:text>"
DURACAO "</xsl:text><xsl:value-of select="duracao"/><xsl:text>"
</xsl:text>
        
    </xsl:template>
    
    <xsl:template match="audicao/atuacoes">
        <xsl:text>ATUACOES {
</xsl:text><xsl:apply-templates select="atuacao"></xsl:apply-templates><xsl:text>}
</xsl:text>
    </xsl:template>
    
    <xsl:template match="atuacao">
        <xsl:text>ATUACAO
DESIGNACAO "</xsl:text><xsl:value-of select="designacao"/><xsl:text>"
</xsl:text>
        <xsl:apply-templates select="alunos"></xsl:apply-templates>
        <xsl:apply-templates select="professores"></xsl:apply-templates>
        <xsl:apply-templates select="pecas"></xsl:apply-templates>
    </xsl:template>
    
    <xsl:template match="alunos">
        <xsl:text>ALUNOS{
</xsl:text><xsl:apply-templates select="aluno"></xsl:apply-templates><xsl:text>}
</xsl:text>
    </xsl:template>
    
    <xsl:template match="professores">
        <xsl:text>PROFESSORES {
</xsl:text><xsl:apply-templates select="professor"></xsl:apply-templates><xsl:text>}
</xsl:text>
    </xsl:template>
    
    <xsl:template match="pecas">
        <xsl:text>PECAS {
</xsl:text><xsl:apply-templates select="peca"></xsl:apply-templates><xsl:text>}
</xsl:text>
    </xsl:template>
    
    <xsl:template match="aluno">
        <xsl:text>ALUNO
NOME "</xsl:text><xsl:value-of select="nome"/><xsl:text>"
ID </xsl:text><xsl:value-of select="id"/><xsl:text>
</xsl:text>
    </xsl:template>
    
    <xsl:template match="professor">
        <xsl:text>PROFESSOR
NOME "</xsl:text><xsl:value-of select="nome"/><xsl:text>"
ID </xsl:text><xsl:value-of select="id"/><xsl:text>
</xsl:text>
    </xsl:template>
    
    <xsl:template match="peca">
        <xsl:text>PECA
TITULO "</xsl:text><xsl:value-of select="titulo"/><xsl:text>"
ID </xsl:text><xsl:value-of select="id"/><xsl:text>
</xsl:text>
    </xsl:template>
    
</xsl:stylesheet>

