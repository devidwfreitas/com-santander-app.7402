.class public abstract Lmex;
.super Lmef;
.source "SourceFile"

# interfaces
.implements Lmdp;
.implements Lmdx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Parent:",
        "Lmef",
        "<TModel;TParent;TVH;>;:",
        "Lmdp;",
        ":",
        "Lmdx;",
        "VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        "SubItem::",
        "Lmdt;",
        ":",
        "Lmdx;",
        ">",
        "Lmef",
        "<TModel;TParent;TVH;>;",
        "Lmdp",
        "<",
        "Lmex;",
        "TSubItem;>;",
        "Lmdx",
        "<",
        "Lmex;",
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

.field private i:Lmef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TParent;"
        }
    .end annotation
.end field

.field private j:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lmef;-><init>(Ljava/lang/Object;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmex;->j:Z

    .line 28
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lmex;->b(Ljava/util/List;)Lmex;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lmdt;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    check-cast p1, Lmef;

    invoke-virtual {p0, p1}, Lmex;->a(Lmef;)Lmex;

    move-result-object v0

    return-object v0
.end method

.method public a(Lmef;)Lmex;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParent;)",
            "Lmex",
            "<TModel;TParent;TVH;TSubItem;>;"
        }
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lmex;->i:Lmef;

    .line 68
    return-object p0
.end method

.method public a(Z)Lmex;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmex",
            "<TModel;TParent;TVH;TSubItem;>;"
        }
    .end annotation

    .prologue
    .line 37
    iput-boolean p1, p0, Lmex;->j:Z

    .line 38
    return-object p0
.end method

.method public b(Ljava/util/List;)Lmex;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TSubItem;>;)",
            "Lmex",
            "<TModel;TParent;TVH;TSubItem;>;"
        }
    .end annotation

    .prologue
    .line 53
    iput-object p1, p0, Lmex;->a:Ljava/util/List;

    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    .line 55
    check-cast v0, Lmdx;

    invoke-interface {v0, p0}, Lmdx;->a(Lmdt;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_0
    return-object p0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lmex;->j_()Ljava/util/List;

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
    .line 32
    iget-boolean v0, p0, Lmex;->j:Z

    return v0
.end method

.method public synthetic g(Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lmex;->a(Z)Lmex;

    move-result-object v0

    return-object v0
.end method

.method public g()Lmef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TParent;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lmex;->i:Lmef;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 48
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
    .line 43
    iget-object v0, p0, Lmex;->a:Ljava/util/List;

    return-object v0
.end method

.method public synthetic k_()Lmdt;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lmex;->g()Lmef;

    move-result-object v0

    return-object v0
.end method
