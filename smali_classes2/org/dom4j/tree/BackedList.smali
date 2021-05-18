.class public Lorg/dom4j/tree/BackedList;
.super Lorg/dom4j/tree/LazyList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/dom4j/Node;",
        ">",
        "Lorg/dom4j/tree/LazyList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final branch:Lorg/dom4j/tree/AbstractBranch;

.field private final branchContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Node;",
            ">;"
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
            "<",
            "Lorg/dom4j/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/dom4j/tree/LazyList;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    .line 37
    iput-object p2, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/tree/AbstractBranch;",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/Node;",
            ">;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/BackedList;-><init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;)V

    .line 43
    invoke-virtual {p0, p3}, Lorg/dom4j/tree/BackedList;->addAll(Ljava/util/Collection;)Z

    .line 44
    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p2, Lorg/dom4j/Node;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/tree/BackedList;->add(ILorg/dom4j/Node;)V

    return-void
.end method

.method public add(ILorg/dom4j/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 55
    if-gez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is less than zero"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 59
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be greater than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "the size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 66
    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 73
    :goto_0
    iget-object v1, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {v1, v0, p2}, Lorg/dom4j/tree/AbstractBranch;->addNode(ILorg/dom4j/Node;)V

    .line 74
    invoke-super {p0, p1, p2}, Lorg/dom4j/tree/LazyList;->add(ILjava/lang/Object;)V

    .line 75
    return-void

    .line 67
    :cond_2
    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 68
    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 70
    :cond_3
    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lorg/dom4j/tree/BackedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lorg/dom4j/Node;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->add(Lorg/dom4j/Node;)Z

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
    .line 48
    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/AbstractBranch;->addNode(Lorg/dom4j/Node;)V

    .line 50
    invoke-super {p0, p1}, Lorg/dom4j/tree/LazyList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addLocal(Lorg/dom4j/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 133
    invoke-super {p0, p1}, Lorg/dom4j/tree/LazyList;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 119
    iget-object v2, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 120
    iget-object v2, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {v2, v0}, Lorg/dom4j/tree/AbstractBranch;->childRemoved(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-super {p0}, Lorg/dom4j/tree/LazyList;->clear()V

    .line 124
    return-void
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->remove(I)Lorg/dom4j/Node;

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
    .line 106
    invoke-super {p0, p1}, Lorg/dom4j/tree/LazyList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 108
    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {v1, v0}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    .line 112
    :cond_0
    return-object v0
.end method

.method public remove(Lorg/dom4j/Node;)Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    .line 101
    invoke-super {p0, p1}, Lorg/dom4j/tree/LazyList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p2, Lorg/dom4j/Node;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/tree/BackedList;->set(ILorg/dom4j/Node;)Lorg/dom4j/Node;

    move-result-object v0

    return-object v0
.end method

.method public set(ILorg/dom4j/Node;)Lorg/dom4j/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 81
    if-gez v0, :cond_2

    .line 82
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 85
    :goto_1
    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 86
    iget-object v2, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    invoke-virtual {v2, v0}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    .line 87
    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {v0, v1, p2}, Lorg/dom4j/tree/AbstractBranch;->addNode(ILorg/dom4j/Node;)V

    .line 93
    :goto_2
    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {v0, p2}, Lorg/dom4j/tree/AbstractBranch;->childAdded(Lorg/dom4j/Node;)V

    .line 95
    invoke-super {p0, p1, p2}, Lorg/dom4j/tree/LazyList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    return-object v0

    .line 82
    :cond_0
    const v0, 0x7fffffff

    goto :goto_0

    .line 89
    :cond_1
    iget-object v1, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    invoke-virtual {v1, v0}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    .line 90
    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {v0, p2}, Lorg/dom4j/tree/AbstractBranch;->addNode(Lorg/dom4j/Node;)V

    goto :goto_2

    :cond_2
    move v1, v0

    goto :goto_1
.end method
