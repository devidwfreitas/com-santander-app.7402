.class public Lcom/santander/app/components/view/SantanderViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/components/view/SantanderViewPager;->a:I

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/components/view/SantanderViewPager;->a:I

    .line 25
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/santander/app/components/view/SantanderViewPager;->a:I

    .line 44
    invoke-virtual {p0}, Lcom/santander/app/components/view/SantanderViewPager;->requestLayout()V

    .line 45
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 30
    :try_start_0
    iget v0, p0, Lcom/santander/app/components/view/SantanderViewPager;->a:I

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SantanderViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->measure(II)V

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 34
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 39
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 40
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
