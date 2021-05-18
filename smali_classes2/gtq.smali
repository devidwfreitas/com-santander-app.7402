.class public Lgtq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/santander/app/components/view/dropuplist/ListDropUp;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/dropuplist/ListDropUp;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lgtq;->a:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x42480000    # 50.0f

    .line 88
    iget-object v0, p0, Lgtq;->a:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    invoke-static {v0}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->a(Lcom/santander/app/components/view/dropuplist/ListDropUp;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lgtq;->a:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    iget-object v1, p0, Lgtq;->a:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    invoke-static {v1}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->b(Lcom/santander/app/components/view/dropuplist/ListDropUp;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->a(Lcom/santander/app/components/view/dropuplist/ListDropUp;F)F

    .line 90
    iget-object v0, p0, Lgtq;->a:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    invoke-static {v0, v5}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->a(Lcom/santander/app/components/view/dropuplist/ListDropUp;Z)Z

    .line 92
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return v5

    .line 94
    :pswitch_0
    iget-object v0, p0, Lgtq;->a:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    invoke-static {v0}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->c(Lcom/santander/app/components/view/dropuplist/ListDropUp;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lgtq;->a:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    invoke-virtual {v0}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->a()V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lgtq;->a:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    invoke-virtual {v0}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->b()V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v0, p0, Lgtq;->a:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    invoke-static {v0}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->d(Lcom/santander/app/components/view/dropuplist/ListDropUp;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lgtq;->a:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    invoke-static {v1}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->e(Lcom/santander/app/components/view/dropuplist/ListDropUp;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v2, v4

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 105
    iget-object v1, p0, Lgtq;->a:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    invoke-static {v1}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->d(Lcom/santander/app/components/view/dropuplist/ListDropUp;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 107
    iget-object v1, p0, Lgtq;->a:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    invoke-static {v1}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->d(Lcom/santander/app/components/view/dropuplist/ListDropUp;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 109
    iget-object v0, p0, Lgtq;->a:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    invoke-static {v0}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->f(Lcom/santander/app/components/view/dropuplist/ListDropUp;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lgtq;->a:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    invoke-static {v1}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->e(Lcom/santander/app/components/view/dropuplist/ListDropUp;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v2, v4

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 111
    iget-object v1, p0, Lgtq;->a:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    invoke-static {v1}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->f(Lcom/santander/app/components/view/dropuplist/ListDropUp;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
