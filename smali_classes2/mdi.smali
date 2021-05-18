.class public Lmdi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmdh;


# instance fields
.field final synthetic a:Lmda;


# direct methods
.method public constructor <init>(Lmda;)V
    .locals 0

    .prologue
    .line 1928
    iput-object p1, p0, Lmdi;->a:Lmda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1949
    iget-object v0, p0, Lmdi;->a:Lmda;

    invoke-static {v0}, Lmda;->i(Lmda;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lmen;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 1950
    return-object p1
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1938
    iget-object v0, p0, Lmdi;->a:Lmda;

    invoke-virtual {v0, p2}, Lmda;->a(I)Lmdt;

    move-result-object v0

    invoke-interface {v0, p1}, Lmdt;->a(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method
