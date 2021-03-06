.class public Lorg/jaxen/util/PrecedingSiblingAxisIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private contextNode:Ljava/lang/Object;

.field private navigator:Lorg/jaxen/Navigator;

.field private nextObj:Ljava/lang/Object;

.field private siblingIter:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/jaxen/Navigator;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/jaxen/util/PrecedingSiblingAxisIterator;->contextNode:Ljava/lang/Object;

    .line 89
    iput-object p2, p0, Lorg/jaxen/util/PrecedingSiblingAxisIterator;->navigator:Lorg/jaxen/Navigator;

    .line 91
    invoke-direct {p0}, Lorg/jaxen/util/PrecedingSiblingAxisIterator;->init()V

    .line 92
    iget-object v0, p0, Lorg/jaxen/util/PrecedingSiblingAxisIterator;->siblingIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/jaxen/util/PrecedingSiblingAxisIterator;->siblingIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jaxen/util/PrecedingSiblingAxisIterator;->nextObj:Ljava/lang/Object;

    .line 96
    :cond_0
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lorg/jaxen/util/PrecedingSiblingAxisIterator;->navigator:Lorg/jaxen/Navigator;

    iget-object v1, p0, Lorg/jaxen/util/PrecedingSiblingAxisIterator;->contextNode:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/jaxen/Navigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_2

    .line 105
    iget-object v1, p0, Lorg/jaxen/util/PrecedingSiblingAxisIterator;->navigator:Lorg/jaxen/Navigator;

    invoke-interface {v1, v0}, Lorg/jaxen/Navigator;->getChildAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 108
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 111
    iget-object v3, p0, Lorg/jaxen/util/PrecedingSiblingAxisIterator;->contextNode:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/jaxen/util/PrecedingSiblingAxisIterator;->siblingIter:Ljava/util/Iterator;

    .line 125
    :goto_1
    return-void

    .line 115
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 122
    :cond_2
    sget-object v0, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/jaxen/util/PrecedingSiblingAxisIterator;->siblingIter:Ljava/util/Iterator;

    goto :goto_1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/jaxen/util/PrecedingSiblingAxisIterator;->nextObj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lorg/jaxen/util/PrecedingSiblingAxisIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/jaxen/util/PrecedingSiblingAxisIterator;->nextObj:Ljava/lang/Object;

    .line 156
    iget-object v1, p0, Lorg/jaxen/util/PrecedingSiblingAxisIterator;->siblingIter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lorg/jaxen/util/PrecedingSiblingAxisIterator;->siblingIter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/jaxen/util/PrecedingSiblingAxisIterator;->nextObj:Ljava/lang/Object;

    .line 163
    :goto_0
    return-object v0

    .line 161
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jaxen/util/PrecedingSiblingAxisIterator;->nextObj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
