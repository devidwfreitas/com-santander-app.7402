.class public abstract Lorg/dom4j/tree/AbstractNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/dom4j/Node;


# static fields
.field private static final DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    sput-object v0, Lorg/dom4j/tree/AbstractNode;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public asXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->supportsParent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->clone()Lorg/dom4j/tree/AbstractNode;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/dom4j/tree/AbstractNode;
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-object p0

    .line 91
    :cond_0
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/tree/AbstractNode;

    .line 92
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/AbstractNode;->setParent(Lorg/dom4j/Element;)V

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/AbstractNode;->setDocument(Lorg/dom4j/Document;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 98
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This should never happen. Caught: "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createPattern(Ljava/lang/String;)Lorg/dom4j/rule/Pattern;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createPattern(Ljava/lang/String;)Lorg/dom4j/rule/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    return-object v0
.end method

.method public createXPathFilter(Ljava/lang/String;)Lorg/dom4j/NodeFilter;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createXPathFilter(Ljava/lang/String;)Lorg/dom4j/NodeFilter;

    move-result-object v0

    return-object v0
.end method

.method public createXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;
    .locals 3

    .prologue
    .line 233
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asXPathResult() not yet implemented fully for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public detach()Lorg/dom4j/Node;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    invoke-interface {v0, p0}, Lorg/dom4j/Element;->remove(Lorg/dom4j/Node;)Z

    .line 116
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lorg/dom4j/tree/AbstractNode;->setParent(Lorg/dom4j/Element;)V

    .line 117
    invoke-virtual {p0, v1}, Lorg/dom4j/tree/AbstractNode;->setDocument(Lorg/dom4j/Document;)V

    .line 119
    return-object p0

    .line 109
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0, p0}, Lorg/dom4j/Document;->remove(Lorg/dom4j/Node;)Z

    goto :goto_0
.end method

.method public getDocument()Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lorg/dom4j/tree/AbstractNode;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getNodeTypeEnum()Lorg/dom4j/NodeType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/NodeType;->getCode()S

    move-result v0

    return v0
.end method

.method public getNodeTypeEnum()Lorg/dom4j/NodeType;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/dom4j/NodeType;->UNKNOWN_NODE:Lorg/dom4j/NodeType;

    return-object v0
.end method

.method public getNodeTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getNodeTypeEnum()Lorg/dom4j/NodeType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/NodeType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractNode;->getPath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUniquePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractNode;->getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPathFilter(Ljava/lang/String;)Lorg/dom4j/NodeFilter;

    move-result-object v0

    .line 194
    invoke-interface {v0, p0}, Lorg/dom4j/NodeFilter;->matches(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public numberValueOf(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    .line 188
    invoke-interface {v0, p0}, Lorg/dom4j/XPath;->numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public selectNodes(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    .line 157
    invoke-interface {v0, p0}, Lorg/dom4j/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public selectNodes(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/tree/AbstractNode;->selectNodes(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public selectNodes(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<+",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    .line 168
    invoke-virtual {p0, p2}, Lorg/dom4j/tree/AbstractNode;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v1

    .line 170
    invoke-interface {v0, p0, v1, p3}, Lorg/dom4j/XPath;->selectNodes(Ljava/lang/Object;Lorg/dom4j/XPath;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public selectObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    .line 151
    invoke-interface {v0, p0}, Lorg/dom4j/XPath;->evaluate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    .line 176
    invoke-interface {v0, p0}, Lorg/dom4j/XPath;->selectSingleNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v0

    return-object v0
.end method

.method public setDocument(Lorg/dom4j/Document;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This node cannot be modified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParent(Lorg/dom4j/Element;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This node cannot be modified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsParent()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractNode;->toString(Ljava/lang/StringBuilder;)V

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    return-void
.end method

.method public valueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractNode;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    .line 182
    invoke-interface {v0, p0}, Lorg/dom4j/XPath;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractNode;->asXML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 144
    return-void
.end method
