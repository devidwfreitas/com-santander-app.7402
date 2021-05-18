.class public Lmhx;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/utils/SmoothScrollerLinearLayoutManager;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/utils/SmoothScrollerLinearLayoutManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lmhx;->a:Lcom/santander/app/seguros/utils/SmoothScrollerLinearLayoutManager;

    .line 46
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lmhx;->a:Lcom/santander/app/seguros/utils/SmoothScrollerLinearLayoutManager;

    invoke-virtual {v0, p1}, Lcom/santander/app/seguros/utils/SmoothScrollerLinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
