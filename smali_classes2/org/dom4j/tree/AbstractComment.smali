.class public abstract Lorg/dom4j/tree/AbstractComment;
.super Lorg/dom4j/tree/AbstractCharacterData;
.source "SourceFile"

# interfaces
.implements Lorg/dom4j/Comment;


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
    .line 73
    invoke-interface {p1, p0}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/Comment;)V

    .line 74
    return-void
.end method

.method public asXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractComment;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeTypeEnum()Lorg/dom4j/NodeType;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/dom4j/NodeType;->COMMENT_NODE:Lorg/dom4j/NodeType;

    return-object v0
.end method

.method public getPath(Lorg/dom4j/Element;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractComment;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->getPath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/comment()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "comment()"

    goto :goto_0
.end method

.method public getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractComment;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/comment()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "comment()"

    goto :goto_0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1}, Lorg/dom4j/tree/AbstractCharacterData;->toString(Ljava/lang/StringBuilder;)V

    .line 56
    const-string v0, " [Comment: \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractComment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v0, "\"]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    return-void
.end method

.method public write(Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 67
    const-string v0, "<!--"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractComment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 69
    const-string v0, "-->"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 70
    return-void
.end method
