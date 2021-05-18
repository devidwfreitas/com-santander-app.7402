.class public Litg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Litf;


# static fields
.field private static final a:Ljava/lang/String; = "vivo"

.field private static final b:Ljava/lang/String; = "claro"


# instance fields
.field private c:Litc;

.field private d:Z

.field private e:Z

.field private f:I

.field private final g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Lisd;

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Lmip;

.field private q:Landroid/location/LocationManager;

.field private r:Landroid/location/LocationListener;

.field private s:Z


# direct methods
.method public constructor <init>(Litc;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v1, p0, Litg;->d:Z

    .line 54
    iput-boolean v1, p0, Litg;->e:Z

    .line 55
    iput v1, p0, Litg;->f:I

    .line 56
    const/16 v0, 0xb4

    iput v0, p0, Litg;->g:I

    .line 57
    iput v1, p0, Litg;->h:I

    .line 59
    const-string v0, ""

    iput-object v0, p0, Litg;->j:Ljava/lang/String;

    .line 61
    iput-boolean v2, p0, Litg;->l:Z

    .line 63
    const-string v0, ""

    iput-object v0, p0, Litg;->n:Ljava/lang/String;

    .line 73
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Litg;->p:Lmip;

    .line 74
    iput-object p1, p0, Litg;->c:Litc;

    .line 76
    iput-boolean v2, p0, Litg;->s:Z

    .line 78
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Litg;->q:Landroid/location/LocationManager;

    .line 79
    invoke-direct {p0}, Litg;->N()Landroid/location/LocationListener;

    move-result-object v0

    iput-object v0, p0, Litg;->r:Landroid/location/LocationListener;

    .line 81
    new-instance v0, Lise;

    iget-object v1, p0, Litg;->c:Litc;

    invoke-interface {v1}, Litc;->q()Lism;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lise;-><init>(Litf;Lism;)V

    iput-object v0, p0, Litg;->k:Lisd;

    .line 82
    invoke-static {}, Lirw;->a()Lirw;

    move-result-object v0

    invoke-direct {p0}, Litg;->L()Lirx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lirw;->a(Lirx;)V

    .line 83
    return-void
.end method

.method private L()Lirx;
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lith;

    invoke-direct {v0, p0}, Lith;-><init>(Litg;)V

    return-object v0
.end method

.method private M()V
    .locals 2

    .prologue
    .line 374
    const-string v0, ""

    iget-object v1, p0, Litg;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    invoke-virtual {p0}, Litg;->h()V

    .line 377
    :cond_0
    return-void
.end method

.method private N()Landroid/location/LocationListener;
    .locals 2

    .prologue
    .line 603
    new-instance v0, Lilq;

    invoke-direct {p0}, Litg;->O()Lfoh;

    move-result-object v1

    invoke-direct {v0, v1}, Lilq;-><init>(Lfoh;)V

    return-object v0
.end method

.method private O()Lfoh;
    .locals 1

    .prologue
    .line 607
    new-instance v0, Litm;

    invoke-direct {v0, p0}, Litm;-><init>(Litg;)V

    return-object v0
.end method

.method static synthetic a(Litg;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Litg;->o:I

    return p1
.end method

.method static synthetic a(Litg;)Litc;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Litg;->c:Litc;

    return-object v0
.end method

.method private a(FF)V
    .locals 4

    .prologue
    .line 459
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 460
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 461
    new-instance v1, Litj;

    invoke-direct {v1, p0}, Litj;-><init>(Litg;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 467
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 468
    return-void
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 447
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 448
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 449
    new-instance v1, Liti;

    invoke-direct {v1, p0}, Liti;-><init>(Litg;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 455
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 456
    return-void
.end method

.method static synthetic a(Litg;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Litg;->d:Z

    return p1
.end method

.method static synthetic b(Litg;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Litg;->o:I

    return v0
.end method

.method private b(II)V
    .locals 4

    .prologue
    .line 471
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 472
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 473
    new-instance v1, Litk;

    invoke-direct {v1, p0}, Litk;-><init>(Litg;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 479
    new-instance v1, Litl;

    invoke-direct {v1, p0}, Litl;-><init>(Litg;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 500
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 501
    return-void
.end method

.method static synthetic c(Litg;)Lisd;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Litg;->k:Lisd;

    return-object v0
.end method

.method static synthetic d(Litg;)Landroid/location/LocationListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Litg;->r:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic e(Litg;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Litg;->q:Landroid/location/LocationManager;

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const v3, 0x7f0b0131

    .line 115
    new-instance v0, Lieu;

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lieu;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-virtual {v0, p1}, Lieu;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v0}, Lieu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->w()V

    .line 119
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0, v2}, Litc;->a(Z)V

    .line 120
    iget-object v0, p0, Litg;->c:Litc;

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Litc;->a(Ljava/lang/String;I)V

    .line 128
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0, v2}, Litc;->a(Z)V

    .line 123
    iget-object v0, p0, Litg;->p:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->e()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Litg;->p:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Litg;->c:Litc;

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Litc;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Litg;->c:Litc;

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Litc;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 381
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "[^0-9*]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    :goto_0
    return-object v0

    .line 381
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    const-string v1, "UNMASK"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string v1, "Outros_Login_Tratamento_Excecao"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unmask() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public A()V
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->F()V

    .line 688
    return-void
.end method

.method public B()V
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->G()V

    .line 693
    return-void
.end method

.method public C()V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->H()V

    .line 698
    return-void
.end method

.method public D()V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->I()V

    .line 703
    return-void
.end method

.method public E()V
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->J()V

    .line 708
    return-void
.end method

.method public F()V
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->K()V

    .line 713
    return-void
.end method

.method public G()V
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->L()V

    .line 718
    return-void
.end method

.method public H()V
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->M()V

    .line 728
    return-void
.end method

.method public I()V
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->N()V

    .line 733
    return-void
.end method

.method public J()V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->O()V

    .line 738
    return-void
.end method

.method public K()V
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Litg;->k:Lisd;

    invoke-interface {v0}, Lisd;->e()V

    .line 743
    return-void
.end method

.method public a()V
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Litg;->s:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Litg;->f()V

    .line 222
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Litg;->s:Z

    .line 223
    return-void
.end method

.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 590
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0, p1}, Litc;->g(I)V

    .line 591
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->c()V

    .line 288
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->e()V

    .line 289
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/view/KeyEvent;)V
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 156
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1009b6

    if-ne v0, v1, :cond_1

    .line 159
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Litg;->f()V

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, ""

    iput-object v0, p0, Litg;->j:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Litg;->c:Litc;

    const-string v1, ""

    invoke-interface {v0, v1}, Litc;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Litg;->a(Z)V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v3, 0x0

    .line 299
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 301
    iget-object v2, p0, Litg;->c:Litc;

    invoke-interface {v2, v0}, Litc;->b(Z)V

    .line 302
    iget-object v2, p0, Litg;->c:Litc;

    invoke-interface {v2, v0}, Litc;->a(Z)V

    .line 303
    iget-object v2, p0, Litg;->c:Litc;

    invoke-interface {v2}, Litc;->r()V

    .line 305
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 307
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Litg;->f:I

    .line 309
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->j()I

    move-result v0

    iget-object v1, p0, Litg;->c:Litc;

    invoke-interface {v1}, Litc;->m()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Litg;->h:I

    goto :goto_0

    .line 315
    :pswitch_1
    iget-boolean v0, p0, Litg;->e:Z

    if-nez v0, :cond_2

    .line 316
    const-string v0, "Login_Acao"

    const-string v1, "SelecionarAcessar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-boolean v0, p0, Litg;->d:Z

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->i()F

    move-result v0

    invoke-direct {p0, v0, v3}, Litg;->a(FF)V

    .line 320
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->l()I

    move-result v0

    iget-object v1, p0, Litg;->c:Litc;

    invoke-interface {v1}, Litc;->m()I

    move-result v1

    invoke-direct {p0, v0, v1}, Litg;->b(II)V

    goto :goto_0

    .line 322
    :cond_1
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->i()F

    move-result v0

    invoke-direct {p0, v0, v4}, Litg;->a(FF)V

    .line 323
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->l()I

    move-result v0

    iget-object v1, p0, Litg;->c:Litc;

    invoke-interface {v1}, Litc;->j()I

    move-result v1

    invoke-direct {p0, v0, v1}, Litg;->b(II)V

    goto :goto_0

    .line 328
    :cond_2
    iget-boolean v0, p0, Litg;->d:Z

    if-eqz v0, :cond_4

    .line 330
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->l()I

    move-result v0

    iget-object v1, p0, Litg;->c:Litc;

    invoke-interface {v1}, Litc;->j()I

    move-result v1

    iget-object v2, p0, Litg;->c:Litc;

    invoke-interface {v2}, Litc;->j()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_3

    .line 331
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->i()F

    move-result v0

    invoke-direct {p0, v0, v4}, Litg;->a(FF)V

    .line 332
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->l()I

    move-result v0

    iget-object v1, p0, Litg;->c:Litc;

    invoke-interface {v1}, Litc;->j()I

    move-result v1

    invoke-direct {p0, v0, v1}, Litg;->b(II)V

    goto/16 :goto_0

    .line 334
    :cond_3
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->i()F

    move-result v0

    invoke-direct {p0, v0, v3}, Litg;->a(FF)V

    .line 335
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->l()I

    move-result v0

    iget-object v1, p0, Litg;->c:Litc;

    invoke-interface {v1}, Litc;->m()I

    move-result v1

    invoke-direct {p0, v0, v1}, Litg;->b(II)V

    goto/16 :goto_0

    .line 340
    :cond_4
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->l()I

    move-result v0

    iget-object v1, p0, Litg;->c:Litc;

    invoke-interface {v1}, Litc;->j()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    if-lt v0, v1, :cond_5

    .line 341
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->i()F

    move-result v0

    invoke-direct {p0, v0, v4}, Litg;->a(FF)V

    .line 342
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->l()I

    move-result v0

    iget-object v1, p0, Litg;->c:Litc;

    invoke-interface {v1}, Litc;->j()I

    move-result v1

    invoke-direct {p0, v0, v1}, Litg;->b(II)V

    goto/16 :goto_0

    .line 344
    :cond_5
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->i()F

    move-result v0

    invoke-direct {p0, v0, v3}, Litg;->a(FF)V

    .line 345
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->l()I

    move-result v0

    iget-object v1, p0, Litg;->c:Litc;

    invoke-interface {v1}, Litc;->m()I

    move-result v1

    invoke-direct {p0, v0, v1}, Litg;->b(II)V

    goto/16 :goto_0

    .line 354
    :pswitch_2
    iget v2, p0, Litg;->f:I

    iget-object v3, p0, Litg;->c:Litc;

    invoke-interface {v3}, Litc;->m()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    if-gt v2, v3, :cond_6

    iget v2, p0, Litg;->f:I

    iget-object v3, p0, Litg;->c:Litc;

    invoke-interface {v3}, Litc;->m()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    iput-boolean v0, p0, Litg;->e:Z

    .line 356
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->j()I

    move-result v0

    sub-int/2addr v0, v1

    iget-object v1, p0, Litg;->c:Litc;

    invoke-interface {v1}, Litc;->m()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 358
    iget-object v1, p0, Litg;->c:Litc;

    invoke-interface {v1}, Litc;->m()I

    move-result v1

    if-lt v0, v1, :cond_8

    .line 359
    iget-object v1, p0, Litg;->c:Litc;

    invoke-interface {v1, v0}, Litc;->f(I)V

    .line 362
    :cond_8
    iget-object v1, p0, Litg;->c:Litc;

    invoke-interface {v1}, Litc;->m()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Litg;->h:I

    iget-object v2, p0, Litg;->c:Litc;

    invoke-interface {v2}, Litc;->m()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr v0, v1

    iput v0, p0, Litg;->i:I

    .line 364
    iget v0, p0, Litg;->i:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    iget v0, p0, Litg;->i:I

    if-ltz v0, :cond_0

    .line 365
    iget-object v0, p0, Litg;->c:Litc;

    iget v1, p0, Litg;->i:I

    mul-int/lit16 v1, v1, 0xb4

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-interface {v0, v1}, Litc;->a(F)V

    goto/16 :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 87
    iget-boolean v0, p0, Litg;->l:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p0}, Litg;->f()V

    .line 89
    iget-object v0, p0, Litg;->c:Litc;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Litc;->b(Z)V

    .line 91
    :cond_0
    return-void
.end method

.method public a(Lfvu;)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->c()V

    .line 228
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0, p1}, Litc;->a(Lfvu;)V

    .line 229
    return-void
.end method

.method public a(Ljava/lang/CharSequence;III)V
    .locals 10

    .prologue
    .line 391
    const/16 v0, 0xd

    if-ne p3, v0, :cond_0

    .line 392
    iget-boolean v0, p0, Litg;->l:Z

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p0}, Litg;->f()V

    .line 397
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 398
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Litg;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 399
    const-string v0, "###.###.###-##"

    .line 401
    const-string v2, ""

    .line 402
    iget-boolean v1, p0, Litg;->m:Z

    if-eqz v1, :cond_2

    .line 403
    iput-object v3, p0, Litg;->n:Ljava/lang/String;

    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Litg;->m:Z

    .line 436
    :cond_1
    :goto_0
    return-void

    .line 407
    :cond_2
    const/4 v1, 0x0

    .line 408
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v9, v0

    move v0, v1

    move-object v1, v2

    move v2, v9

    :goto_1
    if-ge v2, v5, :cond_6

    aget-char v6, v4, v2

    .line 409
    const/16 v7, 0x23

    if-eq v6, v7, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Litg;->n:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v7, v8, :cond_4

    :cond_3
    const/16 v7, 0x23

    if-eq v6, v7, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Litg;->n:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v0, :cond_5

    .line 410
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 415
    :cond_5
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 416
    :catch_0
    move-exception v0

    .line 421
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Litg;->m:Z

    .line 426
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    if-ne p2, v0, :cond_7

    .line 427
    const-string v0, ""

    iput-object v0, p0, Litg;->j:Ljava/lang/String;

    .line 428
    iget-object v0, p0, Litg;->c:Litc;

    const-string v1, ""

    invoke-interface {v0, v1}, Litc;->a(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Litg;->c:Litc;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Litc;->d(I)V

    goto/16 :goto_0

    .line 431
    :cond_7
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0, v1}, Litc;->a(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Litg;->c:Litc;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, v1}, Litc;->d(I)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->c()V

    .line 517
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0, p1}, Litc;->b(Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method public a(Lmwx;)V
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0, p1}, Litc;->a(Lmwx;)V

    .line 723
    return-void
.end method

.method public a(Z)V
    .locals 4

    .prologue
    .line 245
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmyz;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Litg;->c:Litc;

    iget-object v1, p0, Litg;->c:Litc;

    invoke-interface {v1}, Litc;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09089a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Litc;->d(Ljava/lang/String;)V

    .line 283
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-boolean v0, p0, Litg;->l:Z

    if-eqz v0, :cond_3

    .line 253
    if-eqz p1, :cond_1

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    :try_start_0
    new-instance v1, Lnaf;

    invoke-direct {v1}, Lnaf;-><init>()V

    .line 257
    invoke-virtual {v1, v0}, Lnaf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "99|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    const-string v1, "Metodo de Login"

    const-string v2, "Biometria"

    invoke-static {v1, v2}, Lfrq;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 270
    iget-object v1, p0, Litg;->c:Litc;

    invoke-interface {v1}, Litc;->a()V

    .line 272
    iget-object v1, p0, Litg;->k:Lisd;

    invoke-interface {v1, v0}, Lisd;->b(Ljava/lang/String;)V

    .line 281
    :goto_2
    const-string v0, "Login_Acao"

    const-string v1, "BotaoContinuarLogin"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    const-string v0, ""

    goto :goto_1

    .line 265
    :cond_1
    const-string v0, "Metodo de Login"

    const-string v1, "Senha"

    invoke-static {v0, v1}, Lfrq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 274
    :cond_2
    iget-object v0, p0, Litg;->c:Litc;

    const-string v1, "Informe a senha."

    invoke-interface {v0, v1}, Litc;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 278
    :cond_3
    invoke-virtual {p0}, Litg;->h()V

    goto :goto_2
.end method

.method public a(ZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0, p1}, Litc;->c(Z)V

    .line 192
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 193
    invoke-direct {p0, p2}, Litg;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litg;->j:Ljava/lang/String;

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    const/4 v1, 0x4

    const/16 v2, 0xb

    const-string v3, "***.***"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 196
    iget-object v1, p0, Litg;->c:Litc;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Litc;->a(Ljava/lang/String;)V

    .line 198
    const-string v0, "Guardar CPF"

    const-string v1, "Sim"

    invoke-static {v0, v1}, Lfrq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    const-string v0, "Guardar CPF"

    const-string v1, "Nao"

    invoke-static {v0, v1}, Lfrq;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->n()V

    .line 506
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0, p1}, Litc;->h(I)V

    .line 748
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 293
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->c()V

    .line 294
    iget-object v0, p0, Litg;->c:Litc;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Litc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public b(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->r()V

    .line 444
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "claro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    iget-object v0, p0, Litg;->c:Litc;

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Litc;->e(Ljava/lang/String;)V

    .line 187
    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 752
    iput-boolean p1, p0, Litg;->s:Z

    .line 753
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->c()V

    .line 511
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->d()V

    .line 512
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0, p1}, Litc;->f(Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0, p1}, Litc;->g(Ljava/lang/String;)V

    .line 644
    const-string v0, ""

    iget-object v1, p0, Litg;->c:Litc;

    invoke-interface {v1}, Litc;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    const/4 v0, 0x1

    iget-object v1, p0, Litg;->c:Litc;

    invoke-interface {v1}, Litc;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Litg;->a(ZLjava/lang/String;)V

    .line 648
    :cond_0
    invoke-direct {p0}, Litg;->M()V

    .line 649
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 548
    iget-object v0, p0, Litg;->c:Litc;

    const v1, 0x7f090737

    invoke-interface {v0, v1}, Litc;->a(I)V

    .line 549
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->h()I

    move-result v0

    invoke-direct {p0, v2, v0}, Litg;->a(II)V

    .line 550
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0, v2}, Litc;->a(Z)V

    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Litg;->l:Z

    .line 552
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Litg;->e(Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 558
    iget-boolean v0, p0, Litg;->l:Z

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->h()I

    move-result v0

    invoke-direct {p0, v0, v2}, Litg;->a(II)V

    .line 561
    iget-object v0, p0, Litg;->c:Litc;

    const-string v1, ""

    invoke-interface {v0, v1}, Litc;->c(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Litg;->c:Litc;

    iget-object v1, p0, Litg;->c:Litc;

    invoke-interface {v1}, Litc;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, v1}, Litc;->d(I)V

    .line 564
    iget-object v0, p0, Litg;->c:Litc;

    const v1, 0x7f090735

    invoke-interface {v0, v1}, Litc;->a(I)V

    .line 565
    iput-boolean v2, p0, Litg;->l:Z

    .line 571
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->l()I

    move-result v0

    iget-object v1, p0, Litg;->c:Litc;

    invoke-interface {v1}, Litc;->m()I

    move-result v1

    invoke-direct {p0, v0, v1}, Litg;->b(II)V

    .line 569
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->i()F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Litg;->a(FF)V

    goto :goto_0
.end method

.method public g()V
    .locals 3

    .prologue
    .line 527
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    iget-object v1, p0, Litg;->k:Lisd;

    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->k()Z

    move-result v2

    iget-object v0, p0, Litg;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Litg;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lisd;->a(ZLjava/lang/String;)V

    .line 532
    :goto_1
    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Litg;->j:Ljava/lang/String;

    goto :goto_0

    .line 530
    :cond_1
    iget-object v0, p0, Litg;->k:Lisd;

    invoke-interface {v0}, Lisd;->a()V

    goto :goto_1
.end method

.method public h()V
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->f()Ljava/lang/String;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    .line 539
    invoke-direct {p0, v0}, Litg;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 540
    iget-object v1, p0, Litg;->k:Lisd;

    iget-object v2, p0, Litg;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-interface {v1, v0}, Lisd;->a(Ljava/lang/String;)V

    .line 544
    :goto_1
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Litg;->j:Ljava/lang/String;

    goto :goto_0

    .line 542
    :cond_1
    invoke-virtual {p0}, Litg;->b()V

    goto :goto_1
.end method

.method public i()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->a()V

    .line 235
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->c()V

    .line 240
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Litg;->q()V

    .line 207
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->o()V

    .line 208
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Litg;->q()V

    .line 213
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->p()V

    .line 214
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 575
    iget-boolean v0, p0, Litg;->d:Z

    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {p0}, Litg;->f()V

    .line 577
    iget-object v0, p0, Litg;->c:Litc;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Litc;->b(Z)V

    .line 581
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->u()V

    goto :goto_0
.end method

.method public n()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lieu;

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lieu;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v0}, Lieu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->x()V

    .line 99
    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lieu;

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lieu;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {v0}, Lieu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->y()V

    .line 107
    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->r()V

    .line 112
    return-void
.end method

.method public q()V
    .locals 6

    .prologue
    .line 595
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    iget-object v0, p0, Litg;->q:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Litg;->q:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Litg;->r:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public r()V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Litg;->k:Lisd;

    invoke-interface {v0}, Lisd;->c()V

    .line 632
    return-void
.end method

.method public s()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->z()V

    .line 637
    return-void
.end method

.method public t()V
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->A()V

    .line 653
    return-void
.end method

.method public u()V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Litg;->k:Lisd;

    invoke-interface {v0}, Lisd;->d()V

    .line 658
    return-void
.end method

.method public v()V
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->B()V

    .line 663
    return-void
.end method

.method public w()V
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->C()V

    .line 668
    return-void
.end method

.method public x()V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->D()V

    .line 673
    return-void
.end method

.method public y()Landroid/content/Context;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public z()V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Litg;->c:Litc;

    invoke-interface {v0}, Litc;->E()V

    .line 683
    return-void
.end method
