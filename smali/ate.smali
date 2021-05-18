.class public Late;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Latb;


# direct methods
.method public constructor <init>(Latb;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 426
    iput-object p1, p0, Late;->a:Latb;

    .line 427
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 428
    invoke-static {p1}, Latb;->b(Latb;)Lark;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lark;->a(Z)V

    .line 429
    return-void
.end method
