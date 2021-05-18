.class public Lmwk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/santander/app/transfergolden/service/TransferGoldenService;

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/santander/app/transfergolden/service/TransferGoldenService;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lmwk;->a:Lcom/santander/app/transfergolden/service/TransferGoldenService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 195
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 229
    :cond_0
    :goto_0
    return v1

    .line 197
    :pswitch_0
    iget-object v0, p0, Lmwk;->a:Lcom/santander/app/transfergolden/service/TransferGoldenService;

    invoke-static {v0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->f(Lcom/santander/app/transfergolden/service/TransferGoldenService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lmwk;->b:I

    .line 198
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lmwk;->d:F

    .line 199
    iget-object v0, p0, Lmwk;->a:Lcom/santander/app/transfergolden/service/TransferGoldenService;

    invoke-static {v0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->f(Lcom/santander/app/transfergolden/service/TransferGoldenService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lmwk;->c:I

    .line 200
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lmwk;->e:F

    .line 201
    iget v0, p0, Lmwk;->f:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    iput v0, p0, Lmwk;->f:F

    goto :goto_0

    .line 206
    :pswitch_1
    iget v2, p0, Lmwk;->b:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lmwk;->d:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 207
    iget v3, p0, Lmwk;->c:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget v5, p0, Lmwk;->e:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 208
    iget-object v4, p0, Lmwk;->a:Lcom/santander/app/transfergolden/service/TransferGoldenService;

    invoke-static {v4}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->f(Lcom/santander/app/transfergolden/service/TransferGoldenService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 209
    int-to-float v2, v3

    iget v4, p0, Lmwk;->f:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_2

    .line 210
    int-to-float v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setX(F)V

    .line 211
    int-to-float v2, v3

    iget v3, p0, Lmwk;->f:F

    const/high16 v4, 0x41f00000    # 30.0f

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lmwk;->g:Z

    .line 213
    :cond_2
    iget-object v0, p0, Lmwk;->a:Lcom/santander/app/transfergolden/service/TransferGoldenService;

    invoke-static {v0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g(Lcom/santander/app/transfergolden/service/TransferGoldenService;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lmwk;->a:Lcom/santander/app/transfergolden/service/TransferGoldenService;

    invoke-static {v2}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->f(Lcom/santander/app/transfergolden/service/TransferGoldenService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v0, p0, Lmwk;->a:Lcom/santander/app/transfergolden/service/TransferGoldenService;

    invoke-static {v0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->h(Lcom/santander/app/transfergolden/service/TransferGoldenService;)V

    goto :goto_0

    .line 217
    :pswitch_2
    iget-boolean v0, p0, Lmwk;->g:Z

    if-eqz v0, :cond_3

    .line 218
    iget-object v0, p0, Lmwk;->a:Lcom/santander/app/transfergolden/service/TransferGoldenService;

    invoke-static {v0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->i(Lcom/santander/app/transfergolden/service/TransferGoldenService;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 220
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 221
    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-gtz v0, :cond_4

    .line 222
    iget-object v0, p0, Lmwk;->a:Lcom/santander/app/transfergolden/service/TransferGoldenService;

    invoke-static {v0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->j(Lcom/santander/app/transfergolden/service/TransferGoldenService;)V

    goto/16 :goto_0

    .line 224
    :cond_4
    iget-object v0, p0, Lmwk;->a:Lcom/santander/app/transfergolden/service/TransferGoldenService;

    iget v2, p0, Lmwk;->f:F

    invoke-static {v0, v2}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->a(Lcom/santander/app/transfergolden/service/TransferGoldenService;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
