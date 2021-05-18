.class public Lorg/dom4j/util/IndexedElement;
.super Lorg/dom4j/tree/DefaultElement;
.source "SourceFile"


# instance fields
.field private attributeIndex:Lorg/dom4j/util/DoubleNameMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/dom4j/util/DoubleNameMap",
            "<",
            "Lorg/dom4j/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private elementIndex:Lorg/dom4j/util/DoubleNameMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/dom4j/util/DoubleNameMap",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Element;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultElement;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultElement;-><init>(Lorg/dom4j/QName;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/DefaultElement;-><init>(Lorg/dom4j/QName;I)V

    .line 47
    return-void
.end method

.method protected static firstElement(Ljava/util/List;)Lorg/dom4j/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Element;",
            ">;)",
            "Lorg/dom4j/Element;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    goto :goto_0
.end method


# virtual methods
.method protected addNode(Lorg/dom4j/Node;)V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0, p1}, Lorg/dom4j/tree/DefaultElement;->addNode(Lorg/dom4j/Node;)V

    .line 102
    sget-object v0, Lorg/dom4j/util/IndexedElement$1;->$SwitchMap$org$dom4j$NodeType:[I

    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeTypeEnum()Lorg/dom4j/NodeType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/dom4j/NodeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 104
    :pswitch_0
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Lorg/dom4j/util/DoubleNameMap;

    if-eqz v0, :cond_0

    .line 105
    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->addToElementIndex(Lorg/dom4j/Element;)V

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Lorg/dom4j/util/DoubleNameMap;

    if-eqz v0, :cond_0

    .line 110
    check-cast p1, Lorg/dom4j/Attribute;

    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->addToAttributeIndex(Lorg/dom4j/Attribute;)V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected addToAttributeIndex(Lorg/dom4j/Attribute;)V
    .locals 2

    .prologue
    .line 188
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Lorg/dom4j/util/DoubleNameMap;

    invoke-virtual {v1, v0, p1}, Lorg/dom4j/util/DoubleNameMap;->put(Lorg/dom4j/QName;Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method protected addToElementIndex(Lorg/dom4j/Element;)V
    .locals 3

    .prologue
    .line 165
    invoke-interface {p1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    .line 166
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Lorg/dom4j/util/DoubleNameMap;

    invoke-virtual {v0, v1}, Lorg/dom4j/util/DoubleNameMap;->get(Lorg/dom4j/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 167
    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lorg/dom4j/tree/LazyList;

    invoke-direct {v0}, Lorg/dom4j/tree/LazyList;-><init>()V

    .line 169
    iget-object v2, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Lorg/dom4j/util/DoubleNameMap;

    invoke-virtual {v2, v1, v0}, Lorg/dom4j/util/DoubleNameMap;->put(Lorg/dom4j/QName;Ljava/lang/Object;)V

    .line 172
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method

.method protected asElementList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Element;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v1

    .line 89
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 90
    invoke-virtual {v1, v0}, Lorg/dom4j/tree/BackedList;->addLocal(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 93
    :cond_0
    return-object v1
.end method

.method public attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->attributeIndex()Lorg/dom4j/util/DoubleNameMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/util/DoubleNameMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    return-object v0
.end method

.method public attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->attributeIndex()Lorg/dom4j/util/DoubleNameMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/util/DoubleNameMap;->get(Lorg/dom4j/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    return-object v0
.end method

.method protected attributeIndex()Lorg/dom4j/util/DoubleNameMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/dom4j/util/DoubleNameMap",
            "<",
            "Lorg/dom4j/Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Lorg/dom4j/util/DoubleNameMap;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lorg/dom4j/util/DoubleNameMap;

    invoke-direct {v0}, Lorg/dom4j/util/DoubleNameMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Lorg/dom4j/util/DoubleNameMap;

    .line 140
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    .line 141
    invoke-virtual {p0, v0}, Lorg/dom4j/util/IndexedElement;->addToAttributeIndex(Lorg/dom4j/Attribute;)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Lorg/dom4j/util/DoubleNameMap;

    return-object v0
.end method

.method public element(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->elementIndex()Lorg/dom4j/util/DoubleNameMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/util/DoubleNameMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lorg/dom4j/util/IndexedElement;->firstElement(Ljava/util/List;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public element(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->elementIndex()Lorg/dom4j/util/DoubleNameMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/util/DoubleNameMap;->get(Lorg/dom4j/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lorg/dom4j/util/IndexedElement;->firstElement(Ljava/util/List;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method protected elementIndex()Lorg/dom4j/util/DoubleNameMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/dom4j/util/DoubleNameMap",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Element;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Lorg/dom4j/util/DoubleNameMap;

    if-nez v0, :cond_1

    .line 151
    new-instance v0, Lorg/dom4j/util/DoubleNameMap;

    invoke-direct {v0}, Lorg/dom4j/util/DoubleNameMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Lorg/dom4j/util/DoubleNameMap;

    .line 152
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 153
    invoke-static {v0}, Lorg/dom4j/NodeHelper;->nodeAsElement(Lorg/dom4j/Node;)Lorg/dom4j/Element;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0, v0}, Lorg/dom4j/util/IndexedElement;->addToElementIndex(Lorg/dom4j/Element;)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Lorg/dom4j/util/DoubleNameMap;

    return-object v0
.end method

.method public elements(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->elementIndex()Lorg/dom4j/util/DoubleNameMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/util/DoubleNameMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/dom4j/util/IndexedElement;->asElementList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public elements(Lorg/dom4j/QName;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/QName;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->elementIndex()Lorg/dom4j/util/DoubleNameMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/util/DoubleNameMap;->get(Lorg/dom4j/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/dom4j/util/IndexedElement;->asElementList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected removeFromAttributeIndex(Lorg/dom4j/Attribute;)V
    .locals 2

    .prologue
    .line 193
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Lorg/dom4j/util/DoubleNameMap;

    invoke-virtual {v1, v0}, Lorg/dom4j/util/DoubleNameMap;->remove(Lorg/dom4j/QName;)V

    .line 195
    return-void
.end method

.method protected removeFromElementIndex(Lorg/dom4j/Element;)V
    .locals 2

    .prologue
    .line 176
    invoke-interface {p1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    .line 177
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Lorg/dom4j/util/DoubleNameMap;

    invoke-virtual {v0, v1}, Lorg/dom4j/util/DoubleNameMap;->get(Lorg/dom4j/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 178
    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 180
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Lorg/dom4j/util/DoubleNameMap;

    invoke-virtual {v0, v1}, Lorg/dom4j/util/DoubleNameMap;->remove(Lorg/dom4j/QName;)V

    .line 185
    :cond_0
    return-void
.end method

.method protected removeNode(Lorg/dom4j/Node;)Z
    .locals 2

    .prologue
    .line 118
    invoke-super {p0, p1}, Lorg/dom4j/tree/DefaultElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    sget-object v0, Lorg/dom4j/util/IndexedElement$1;->$SwitchMap$org$dom4j$NodeType:[I

    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeTypeEnum()Lorg/dom4j/NodeType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/dom4j/NodeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 131
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 134
    :goto_1
    return v0

    .line 121
    :pswitch_0
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Lorg/dom4j/util/DoubleNameMap;

    if-eqz v0, :cond_0

    .line 122
    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->removeFromElementIndex(Lorg/dom4j/Element;)V

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Lorg/dom4j/util/DoubleNameMap;

    if-eqz v0, :cond_0

    .line 127
    check-cast p1, Lorg/dom4j/Attribute;

    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->removeFromAttributeIndex(Lorg/dom4j/Attribute;)V

    goto :goto_0

    .line 134
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
