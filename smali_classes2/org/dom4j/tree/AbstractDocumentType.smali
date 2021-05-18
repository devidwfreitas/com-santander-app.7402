.class public abstract Lorg/dom4j/tree/AbstractDocumentType;
.super Lorg/dom4j/tree/AbstractNode;
.source "SourceFile"

# interfaces
.implements Lorg/dom4j/DocumentType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractNode;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public accept(Lorg/dom4j/Visitor;)V
    .locals 0

    .prologue
    .line 174
    invoke-interface {p1, p0}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/DocumentType;)V

    .line 175
    return-void
.end method

.method public asXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractDocumentType;->asXML(Ljava/lang/StringBuilder;)V

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected asXML(Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    const/16 v3, 0x22

    .line 100
    const-string v0, "<!DOCTYPE "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v1

    .line 106
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 107
    const-string v0, " PUBLIC "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    const/4 v0, 0x1

    .line 114
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v1

    .line 116
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 117
    if-nez v0, :cond_1

    .line 118
    const-string v0, " SYSTEM"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_1
    const-string v0, " \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    :cond_2
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getElementName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeTypeEnum()Lorg/dom4j/NodeType;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lorg/dom4j/NodeType;->DOCUMENT_TYPE_NODE:Lorg/dom4j/NodeType;

    return-object v0
.end method

.method public getPath(Lorg/dom4j/Element;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, ""

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getInternalDeclarations()Ljava/util/List;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/dtd/InternalDeclaration;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 79
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_1
    return-object v0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method public getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, ""

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractDocumentType;->setElementName(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0, p1}, Lorg/dom4j/tree/AbstractNode;->toString(Ljava/lang/StringBuilder;)V

    .line 88
    const-string v0, " [DocumentType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractDocumentType;->asXML(Ljava/lang/StringBuilder;)V

    .line 90
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    return-void
.end method

.method public write(Ljava/io/Writer;)V
    .locals 4

    .prologue
    const/16 v3, 0x22

    .line 131
    const-string v0, "<!DOCTYPE "

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 138
    const-string v0, " PUBLIC \""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 141
    const/4 v0, 0x1

    .line 144
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 147
    if-nez v0, :cond_1

    .line 148
    const-string v0, " SYSTEM"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 151
    :cond_1
    const-string v0, " \""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 156
    :cond_2
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getInternalDeclarations()Ljava/util/List;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 159
    const-string v1, " ["

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/dtd/InternalDeclaration;

    .line 163
    const-string v2, "\n  "

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_3
    const-string v0, "\n]"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 170
    :cond_4
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 171
    return-void
.end method
