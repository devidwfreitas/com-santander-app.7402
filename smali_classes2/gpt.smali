.class public Lgpt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/ListView;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 22
    if-eqz v3, :cond_1

    .line 24
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    move v1, v0

    move v2, v0

    .line 28
    :goto_0
    if-ge v1, v4, :cond_0

    .line 29
    const/4 v5, 0x0

    invoke-interface {v3, v1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 30
    invoke-virtual {v5, v0, v0}, Landroid/view/View;->measure(II)V

    .line 31
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v2, v5

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    add-int/lit8 v1, v4, -0x1

    mul-int/2addr v0, v1

    .line 39
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 40
    add-int/2addr v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 44
    const/4 v0, 0x1

    .line 47
    :cond_1
    return v0
.end method
