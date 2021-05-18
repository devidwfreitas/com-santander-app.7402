.class public abstract Lorg/dom4j/tree/AbstractText;
.super Lorg/dom4j/tree/AbstractCharacterData;
.source "SourceFile"

# interfaces
.implements Lorg/dom4j/Text;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractCharacterData;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public accept(Lorg/dom4j/Visitor;)V
    .locals 0

    .prologue
    .line 48
    invoke-interface {p1, p0}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/Text;)V

    .line 49
    return-void
.end method

.method public asXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractText;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeTypeEnum()Lorg/dom4j/NodeType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lorg/dom4j/NodeType;->TEXT_NODE:Lorg/dom4j/NodeType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/dom4j/tree/AbstractCharacterData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [Text: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractText;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 45
    return-void
.end method
