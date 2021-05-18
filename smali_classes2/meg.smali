.class public abstract Lmeg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmei;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lmdt;",
        ">",
        "Ljava/lang/Object;",
        "Lmei",
        "<TItem;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Landroid/view/View;ILmda;Lmdt;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lmda",
            "<TItem;>;TItem;)V"
        }
    .end annotation
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method
