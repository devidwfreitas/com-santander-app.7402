.class public abstract Lorg/dom4j/tree/AbstractBranch;
.super Lorg/dom4j/tree/AbstractNode;
.source "SourceFile"

# interfaces
.implements Lorg/dom4j/Branch;


# static fields
.field protected static final DEFAULT_CONTENT_LIST_SIZE:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractNode;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public add(Lorg/dom4j/Comment;)V
    .locals 0

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->addNode(Lorg/dom4j/Node;)V

    .line 205
    return-void
.end method

.method public add(Lorg/dom4j/Element;)V
    .locals 0

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->addNode(Lorg/dom4j/Node;)V

    .line 209
    return-void
.end method

.method public add(Lorg/dom4j/Node;)V
    .locals 2

    .prologue
    .line 172
    sget-object v0, Lorg/dom4j/tree/AbstractBranch$1;->$SwitchMap$org$dom4j$NodeType:[I

    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeTypeEnum()Lorg/dom4j/NodeType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/dom4j/NodeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 183
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->invalidNodeTypeAddException(Lorg/dom4j/Node;)V

    .line 185
    :goto_0
    return-void

    .line 174
    :pswitch_0
    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Element;)V

    goto :goto_0

    .line 177
    :pswitch_1
    check-cast p1, Lorg/dom4j/Comment;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Comment;)V

    goto :goto_0

    .line 180
    :pswitch_2
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/ProcessingInstruction;)V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public add(Lorg/dom4j/ProcessingInstruction;)V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->addNode(Lorg/dom4j/Node;)V

    .line 213
    return-void
.end method

.method public addElement(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 142
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Element;)V

    .line 144
    return-object v0
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 150
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Element;)V

    .line 152
    return-object v0
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 2

    .prologue
    .line 163
    invoke-static {p2, p3}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    .line 166
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->addElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public addElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Element;)V

    .line 159
    return-object v0
.end method

.method protected abstract addNode(ILorg/dom4j/Node;)V
.end method

.method public abstract addNode(Lorg/dom4j/Node;)V
.end method

.method public appendContent(Lorg/dom4j/Branch;)V
    .locals 2

    .prologue
    .line 252
    invoke-interface {p1}, Lorg/dom4j/Branch;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 253
    invoke-interface {v0}, Lorg/dom4j/Node;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 255
    :cond_0
    return-void
.end method

.method public abstract childAdded(Lorg/dom4j/Node;)V
.end method

.method public abstract childRemoved(Lorg/dom4j/Node;)V
.end method

.method public content()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v0

    .line 43
    new-instance v1, Lorg/dom4j/tree/ContentListFacade;

    invoke-direct {v1, p0, v0}, Lorg/dom4j/tree/ContentListFacade;-><init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;)V

    return-object v1
.end method

.method protected abstract contentList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation
.end method

.method protected contentRemoved()V
    .locals 2

    .prologue
    .line 348
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 349
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->childRemoved(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 351
    :cond_0
    return-void
.end method

.method public createContentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    new-instance v0, Lorg/dom4j/tree/LazyList;

    invoke-direct {v0}, Lorg/dom4j/tree/LazyList;-><init>()V

    return-object v0
.end method

.method public createResultList()Lorg/dom4j/tree/BackedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/dom4j/Node;",
            ">()",
            "Lorg/dom4j/tree/BackedList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Lorg/dom4j/tree/BackedList;

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/dom4j/tree/BackedList;-><init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;)V

    return-object v0
.end method

.method public elementByID(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 4

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->nodeCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 230
    invoke-virtual {p0, v1}, Lorg/dom4j/tree/AbstractBranch;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    .line 232
    instance-of v3, v0, Lorg/dom4j/Element;

    if-eqz v3, :cond_2

    .line 233
    check-cast v0, Lorg/dom4j/Element;

    .line 234
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->elementID(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v3

    .line 236
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    :cond_0
    :goto_1
    return-object v0

    .line 239
    :cond_1
    invoke-interface {v0, p1}, Lorg/dom4j/Element;->elementByID(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 241
    if-nez v0, :cond_0

    .line 229
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 248
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected elementID(Lorg/dom4j/Element;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    const-string v0, "ID"

    invoke-interface {p1, v0}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContentAsStringValue(Lorg/dom4j/Node;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lorg/dom4j/tree/AbstractBranch$1;->$SwitchMap$org$dom4j$NodeType:[I

    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeTypeEnum()Lorg/dom4j/NodeType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/dom4j/NodeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 111
    const-string v0, ""

    :goto_0
    return-object v0

    .line 109
    :pswitch_0
    invoke-interface {p1}, Lorg/dom4j/Node;->getStringValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getContentAsText(Lorg/dom4j/Node;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lorg/dom4j/tree/AbstractBranch$1;->$SwitchMap$org$dom4j$NodeType:[I

    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeTypeEnum()Lorg/dom4j/NodeType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/dom4j/NodeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 92
    const-string v0, ""

    :goto_0
    return-object v0

    .line 89
    :pswitch_0
    invoke-interface {p1}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 53
    if-lt v3, v1, :cond_2

    .line 54
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 55
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->getContentAsText(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    .line 57
    if-ne v3, v1, :cond_0

    .line 73
    :goto_0
    return-object v0

    .line 61
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    :goto_1
    if-ge v1, v3, :cond_1

    .line 64
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 65
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->getContentAsText(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public getTextTrim()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->getText()Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 121
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->nodeCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexOf(Lorg/dom4j/Node;)I
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected invalidNodeTypeAddException(Lorg/dom4j/Node;)V
    .locals 3

    .prologue
    .line 361
    new-instance v0, Lorg/dom4j/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid node type. Cannot add node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to this branch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/dom4j/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->nodeIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public node(I)Lorg/dom4j/Node;
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 259
    return-object v0
.end method

.method public nodeCount()I
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public nodeIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lorg/dom4j/Comment;)Z
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Element;)Z
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Node;)Z
    .locals 2

    .prologue
    .line 188
    sget-object v0, Lorg/dom4j/tree/AbstractBranch$1;->$SwitchMap$org$dom4j$NodeType:[I

    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeTypeEnum()Lorg/dom4j/NodeType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/dom4j/NodeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 196
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->invalidNodeTypeAddException(Lorg/dom4j/Node;)V

    .line 197
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 190
    :pswitch_0
    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->remove(Lorg/dom4j/Element;)Z

    move-result v0

    goto :goto_0

    .line 192
    :pswitch_1
    check-cast p1, Lorg/dom4j/Comment;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->remove(Lorg/dom4j/Comment;)Z

    move-result v0

    goto :goto_0

    .line 194
    :pswitch_2
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->remove(Lorg/dom4j/ProcessingInstruction;)Z

    move-result v0

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public remove(Lorg/dom4j/ProcessingInstruction;)Z
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public abstract removeNode(Lorg/dom4j/Node;)Z
.end method

.method public setProcessingInstructions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/ProcessingInstruction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    .line 136
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->addNode(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method
