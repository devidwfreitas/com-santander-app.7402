.class public Lorg/dom4j/tree/ContentListFacade;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/dom4j/Node;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private branch:Lorg/dom4j/tree/AbstractBranch;

.field private branchContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/tree/AbstractBranch;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/dom4j/tree/ContentListFacade;->branch:Lorg/dom4j/tree/AbstractBranch;

    .line 42
    iput-object p2, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p2, Lorg/dom4j/Node;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/tree/ContentListFacade;->add(ILorg/dom4j/Node;)V

    return-void
.end method

.method public add(ILorg/dom4j/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {v0, p2}, Lorg/dom4j/tree/AbstractBranch;->childAdded(Lorg/dom4j/Node;)V

    .line 55
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 56
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lorg/dom4j/Node;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/ContentListFacade;->add(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public add(Lorg/dom4j/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/AbstractBranch;->childAdded(Lorg/dom4j/Node;)V

    .line 49
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 97
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    add-int/lit8 v2, p1, 0x1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/tree/ContentListFacade;->add(ILorg/dom4j/Node;)V

    .line 97
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move p1, v2

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 86
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/ContentListFacade;->add(Lorg/dom4j/Node;)Z

    .line 86
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/dom4j/tree/ContentListFacade;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 107
    iget-object v2, p0, Lorg/dom4j/tree/ContentListFacade;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {v2, v0}, Lorg/dom4j/tree/AbstractBranch;->childRemoved(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    return-void
.end method

.method public contains(Lorg/dom4j/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/ContentListFacade;->get(I)Lorg/dom4j/Node;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lorg/dom4j/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    return-object v0
.end method

.method protected getBackingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    return-object v0
.end method

.method public indexOf(Lorg/dom4j/Node;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public lastIndexOf(Lorg/dom4j/Node;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/ContentListFacade;->remove(I)Lorg/dom4j/Node;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lorg/dom4j/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 75
    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Lorg/dom4j/tree/ContentListFacade;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {v1, v0}, Lorg/dom4j/tree/AbstractBranch;->childRemoved(Lorg/dom4j/Node;)V

    .line 79
    :cond_0
    return-object v0
.end method

.method public remove(Lorg/dom4j/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/AbstractBranch;->childRemoved(Lorg/dom4j/Node;)V

    .line 68
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 115
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 116
    instance-of v2, v0, Lorg/dom4j/Node;

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lorg/dom4j/tree/ContentListFacade;->branch:Lorg/dom4j/tree/AbstractBranch;

    check-cast v0, Lorg/dom4j/Node;

    invoke-virtual {v2, v0}, Lorg/dom4j/tree/AbstractBranch;->childRemoved(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    check-cast p2, Lorg/dom4j/Node;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/tree/ContentListFacade;->set(ILorg/dom4j/Node;)Lorg/dom4j/Node;

    move-result-object v0

    return-object v0
.end method

.method public set(ILorg/dom4j/Node;)Lorg/dom4j/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {v0, p2}, Lorg/dom4j/tree/AbstractBranch;->childAdded(Lorg/dom4j/Node;)V

    .line 62
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lorg/dom4j/tree/ContentListFacade;->toArray()[Lorg/dom4j/Node;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Lorg/dom4j/Node;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/dom4j/Node;

    check-cast v0, [Lorg/dom4j/Node;

    return-object v0
.end method

.method public toArray([Lorg/dom4j/Node;)[Lorg/dom4j/Node;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/dom4j/tree/ContentListFacade;->branchContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/dom4j/Node;

    return-object v0
.end method
