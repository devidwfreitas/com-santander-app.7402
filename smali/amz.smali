.class Lamz;
.super Lamu;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lamu;-><init>(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lamz;->itemView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    return-void
.end method
