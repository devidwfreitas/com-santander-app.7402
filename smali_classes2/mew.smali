.class public abstract Lmew;
.super Lmee;
.source "SourceFile"

# interfaces
.implements Lmdp;
.implements Lmdx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Parent::",
        "Lmdt;",
        ":",
        "Lmdp;",
        ":",
        "Lmdx;",
        ":",
        "Lmdn;",
        "VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        "SubItem::",
        "Lmdt;",
        ":",
        "Lmdx;",
        ">",
        "Lmee",
        "<TParent;TVH;>;",
        "Lmdp",
        "<",
        "Lmew;",
        "TSubItem;>;",
        "Lmdx",
        "<",
        "Lmew;",
        "TParent;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TSubItem;>;"
        }
    .end annotation
.end field

.field private i:Lmdt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TParent;"
        }
    .end annotation
.end field

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lmee;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmew;->j:Z

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lmew;->b(Ljava/util/List;)Lmew;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lmdt;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lmew;->b(Lmdt;)Lmew;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/List;)Lmew;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TSubItem;>;)",
            "Lmew",
            "<TParent;TVH;TSubItem;>;"
        }
    .end annotation

    .prologue
    .line 50
    iput-object p1, p0, Lmew;->a:Ljava/util/List;

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    .line 52
    check-cast v0, Lmdx;

    invoke-interface {v0, p0}, Lmdx;->a(Lmdt;)Ljava/lang/Object;

    goto :goto_0

    .line 54
    :cond_0
    return-object p0
.end method

.method public b(Lmdt;)Lmew;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParent;)",
            "Lmew",
            "<TParent;TVH;TSubItem;>;"
        }
    .end annotation

    .prologue
    .line 64
    iput-object p1, p0, Lmew;->i:Lmdt;

    .line 65
    return-object p0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lmew;->j_()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lmew;->j:Z

    return v0
.end method

.method public synthetic g(Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lmew;->n(Z)Lmew;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public j_()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TSubItem;>;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lmew;->a:Ljava/util/List;

    return-object v0
.end method

.method public k_()Lmdt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TParent;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lmew;->i:Lmdt;

    return-object v0
.end method

.method public n(Z)Lmew;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmew",
            "<TParent;TVH;TSubItem;>;"
        }
    .end annotation

    .prologue
    .line 34
    iput-boolean p1, p0, Lmew;->j:Z

    .line 35
    return-object p0
.end method
