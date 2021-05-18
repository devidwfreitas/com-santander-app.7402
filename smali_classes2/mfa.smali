.class public Lmfa;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lmec;Ljava/util/List;Lmey;Z)Lmec;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lmec",
            "<TItem;>;Item::",
            "Lmdt;",
            ">(TA;",
            "Ljava/util/List",
            "<TItem;>;",
            "Lmey",
            "<TItem;>;Z)TA;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0}, Lmec;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p1}, Lmes;->a(Ljava/util/List;)Ljava/util/List;

    .line 30
    :cond_0
    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmda;->j(Z)V

    .line 33
    invoke-virtual {p0}, Lmec;->j()Ljava/util/Comparator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p0}, Lmec;->j()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 38
    :cond_1
    invoke-virtual {p0, p1}, Lmec;->a(Ljava/lang/Iterable;)V

    .line 41
    invoke-virtual {p0}, Lmec;->e()Ljava/util/List;

    move-result-object v0

    .line 43
    new-instance v1, Lmfb;

    invoke-direct {v1, v0, p1, p2}, Lmfb;-><init>(Ljava/util/List;Ljava/util/List;Lmey;)V

    invoke-static {v1, p3}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v1

    .line 73
    if-eq p1, v0, :cond_3

    .line 75
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 76
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    :cond_3
    new-instance v0, Lmfc;

    invoke-direct {v0, p0}, Lmfc;-><init>(Lmec;)V

    invoke-virtual {v1, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V

    .line 105
    return-object p0
.end method
