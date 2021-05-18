.class public Lgts;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/santander/app/components/view/dropuplist/ListDropUp;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/dropuplist/ListDropUp;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lgts;->b:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    iput-object p2, p0, Lgts;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 154
    iget-object v1, p0, Lgts;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 155
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 156
    iget-object v0, p0, Lgts;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 158
    iget-object v1, p0, Lgts;->b:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    invoke-static {v1}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->d(Lcom/santander/app/components/view/dropuplist/ListDropUp;)Landroid/widget/LinearLayout;

    move-result-object v1

    float-to-double v2, v0

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 159
    return-void
.end method
