.class public abstract Lorg/dom4j/tree/AbstractCDATA;
.super Lorg/dom4j/tree/AbstractCharacterData;
.source "SourceFile"

# interfaces
.implements Lorg/dom4j/CDATA;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractCharacterData;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public accept(Lorg/dom4j/Visitor;)V
    .locals 0

    .prologue
    .line 69
    invoke-interface {p1, p0}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/CDATA;)V

    .line 70
    return-void
.end method

.method public asXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 49
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractCDATA;->write(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 50
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getNodeTypeEnum()Lorg/dom4j/NodeType;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/dom4j/NodeType;->CDATA_SECTION_NODE:Lorg/dom4j/NodeType;

    return-object v0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Lorg/dom4j/tree/AbstractCharacterData;->toString(Ljava/lang/StringBuilder;)V

    .line 40
    const-string v0, " [CDATA: \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractCDATA;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v0, "\"]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    return-void
.end method

.method public write(Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 59
    const-string v0, "<![CDATA["

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractCDATA;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractCDATA;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 65
    :cond_0
    const-string v0, "]]>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 66
    return-void
.end method
