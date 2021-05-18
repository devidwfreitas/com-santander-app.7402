.class public Lcom/santander/app/PagamentoFacturaCartoesActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lnez;


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Lcom/santander/app/widget/Carrossel;

.field private C:Landroid/app/Activity;

.field private D:Lfjo;

.field private E:Lfud;

.field private F:Lfos;

.field private G:Lfos;

.field private H:Lcom/santander/app/widget/Carrossel;

.field private I:Z

.field private J:Landroid/content/Intent;

.field private K:Landroid/os/Bundle;

.field private L:Ljava/lang/String;

.field private M:Landroid/widget/TextView;

.field private N:Z

.field private O:I

.field private P:I

.field public a:Landroid/app/Dialog;

.field private final b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfpv;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/santander/app/widget/Indicator;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private w:Lgon;

.field private x:Lcom/santander/app/widget/Indicator;

.field private y:Landroid/support/v4/view/ViewPager;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 63
    const-string v0, "PagamentoFacturaCartoesActivity"

    iput-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->b:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->a:Landroid/app/Dialog;

    .line 91
    iput-boolean v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->N:Z

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->O:I

    .line 93
    iput v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->P:I

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/PagamentoFacturaCartoesActivity;I)I
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->P:I

    return p1
.end method

.method public static synthetic a(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Lfud;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->E:Lfud;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/PagamentoFacturaCartoesActivity;Lfud;)Lfud;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->E:Lfud;

    return-object p1
.end method

.method private a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 675
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 676
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 677
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 678
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v4, "com.santander.app"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    invoke-virtual {p0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->onDestroy()V

    .line 680
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 681
    const/4 v2, 0x1

    .line 684
    :cond_0
    return v2

    .line 677
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->C:Landroid/app/Activity;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->e:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 193
    .line 194
    invoke-direct {p0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->h()V

    .line 197
    invoke-direct {p0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->f()V

    .line 198
    invoke-direct {p0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->g()V

    .line 200
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhau;->a(Z)V

    .line 202
    invoke-direct {p0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->j()V

    .line 203
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method private d()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    .line 208
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->A()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x1

    .line 214
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 212
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static synthetic e(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Lcom/santander/app/widget/Carrossel;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->H:Lcom/santander/app/widget/Carrossel;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->C:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->a:Landroid/app/Dialog;

    .line 219
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->t()Lgke;

    move-result-object v0

    new-instance v1, Lfjh;

    invoke-direct {v1, p0}, Lfjh;-><init>(Lcom/santander/app/PagamentoFacturaCartoesActivity;)V

    invoke-interface {v0, v1}, Lgke;->a(Lfoh;)V

    .line 229
    return-void
.end method

.method public static synthetic f(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Lgon;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->w:Lgon;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 235
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 238
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 241
    :cond_0
    const v0, 0x7f1008b7

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->H:Lcom/santander/app/widget/Carrossel;

    .line 243
    new-instance v0, Lfoo;

    iget v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->O:I

    invoke-direct {v0, p0, v2, v1}, Lfoo;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 245
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->H:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v1, v0}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 247
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->H:Lcom/santander/app/widget/Carrossel;

    new-instance v1, Lfji;

    invoke-direct {v1, p0}, Lfji;-><init>(Lcom/santander/app/PagamentoFacturaCartoesActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 254
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 255
    const v0, 0x7f10103f

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 256
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 259
    :cond_1
    return-void
.end method

.method private g()V
    .locals 5

    .prologue
    .line 262
    const v0, 0x7f10103d

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->B:Lcom/santander/app/widget/Carrossel;

    .line 263
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 265
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 267
    new-instance v2, Lfos;

    invoke-direct {v2}, Lfos;-><init>()V

    iput-object v2, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->F:Lfos;

    .line 268
    iget-object v2, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->F:Lfos;

    const-string v3, "PAGAR HOJE"

    invoke-virtual {v2, v3}, Lfos;->a(Ljava/lang/String;)V

    .line 269
    iget-object v2, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->F:Lfos;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfos;->b(Ljava/lang/String;)V

    .line 271
    new-instance v2, Lfos;

    invoke-direct {v2}, Lfos;-><init>()V

    iput-object v2, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->G:Lfos;

    .line 272
    iget-object v2, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->G:Lfos;

    const-string v3, "AGENDAR PARA"

    invoke-virtual {v2, v3}, Lfos;->a(Ljava/lang/String;)V

    .line 273
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 274
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 275
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 276
    iget-object v3, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->G:Lfos;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lfos;->b(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->G:Lfos;

    sget-object v2, Lfot;->PICKER:Lfot;

    invoke-virtual {v1, v2}, Lfos;->a(Lfot;)V

    .line 279
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->F:Lfos;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->G:Lfos;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 282
    iget-boolean v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->I:Z

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->G:Lfos;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 284
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->I:Z

    .line 287
    :cond_0
    new-instance v1, Lfou;

    invoke-direct {v1, p0, v0, p0}, Lfou;-><init>(Landroid/content/Context;Ljava/util/Vector;Landroid/app/Activity;)V

    .line 289
    iget-object v2, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->B:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v2, v1}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 291
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->B:Lcom/santander/app/widget/Carrossel;

    new-instance v2, Lfjj;

    invoke-direct {v2, p0, v0}, Lfjj;-><init>(Lcom/santander/app/PagamentoFacturaCartoesActivity;Ljava/util/Vector;)V

    invoke-virtual {v1, v2}, Lcom/santander/app/widget/Carrossel;->setListener(Lnez;)V

    .line 303
    return-void
.end method

.method public static synthetic g(Lcom/santander/app/PagamentoFacturaCartoesActivity;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->c()V

    return-void
.end method

.method private h()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 327
    const v0, 0x7f10102c

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->y:Landroid/support/v4/view/ViewPager;

    .line 328
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->y:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lfjk;

    invoke-direct {v1, p0}, Lfjk;-><init>(Lcom/santander/app/PagamentoFacturaCartoesActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 352
    const v0, 0x7f10102d

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->x:Lcom/santander/app/widget/Indicator;

    .line 353
    const v0, 0x7f10102a    # 1.9149276E38f

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->A:Landroid/widget/ImageView;

    .line 354
    const v0, 0x7f10102b

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->z:Landroid/widget/ImageView;

    .line 356
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->A:Landroid/widget/ImageView;

    new-instance v1, Lfjl;

    invoke-direct {v1, p0}, Lfjl;-><init>(Lcom/santander/app/PagamentoFacturaCartoesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->z:Landroid/widget/ImageView;

    new-instance v1, Lfjm;

    invoke-direct {v1, p0}, Lfjm;-><init>(Lcom/santander/app/PagamentoFacturaCartoesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    new-instance v0, Lgon;

    iget-object v2, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->y:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->x:Lcom/santander/app/widget/Indicator;

    iget-object v4, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->A:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->z:Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lgon;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    iput-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->w:Lgon;

    .line 381
    invoke-virtual {p0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_4

    .line 384
    const-string v1, "indexCartao"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 386
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->s()Lght;

    move-result-object v1

    invoke-interface {v1}, Lght;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->s()Lght;

    move-result-object v1

    invoke-interface {v1}, Lght;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_2

    .line 388
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->L:Ljava/lang/String;

    move v0, v6

    .line 395
    :goto_0
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->L:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ""

    iget-object v2, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->L:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 397
    new-instance v0, Lghu;

    invoke-direct {v0}, Lghu;-><init>()V

    .line 398
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lghu;->y(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->s()Lght;

    move-result-object v1

    invoke-interface {v1}, Lght;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 403
    :cond_1
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->w:Lgon;

    if-gez v0, :cond_3

    :goto_1
    invoke-virtual {v1, v6}, Lgon;->b(I)V

    .line 404
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->w:Lgon;

    invoke-virtual {v0, p0}, Lgon;->a(Lnez;)V

    .line 406
    return-void

    .line 390
    :cond_2
    invoke-virtual {p0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "NUMEROCARTAO"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->L:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move v6, v0

    .line 403
    goto :goto_1

    :cond_4
    move v0, v6

    goto :goto_0
.end method

.method public static synthetic h(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->N:Z

    return v0
.end method

.method public static synthetic i(Lcom/santander/app/PagamentoFacturaCartoesActivity;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->P:I

    return v0
.end method

.method private i()V
    .locals 5

    .prologue
    .line 409
    const v0, 0x7f101039

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->e:Landroid/support/v4/view/ViewPager;

    .line 410
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->e:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lfjn;

    invoke-direct {v1, p0}, Lfjn;-><init>(Lcom/santander/app/PagamentoFacturaCartoesActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->c:Ljava/util/List;

    .line 428
    new-instance v0, Lfpv;

    invoke-direct {v0}, Lfpv;-><init>()V

    .line 429
    const-string v1, "PAGAR VALOR TOTAL"

    invoke-virtual {v0, v1}, Lfpv;->a(Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->E:Lfud;

    invoke-virtual {v1}, Lfud;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfpv;->b(Ljava/lang/String;)V

    .line 431
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfpv;->a(I)V

    .line 433
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    new-instance v0, Lfpv;

    invoke-direct {v0}, Lfpv;-><init>()V

    .line 436
    const-string v1, "PAGAR VALOR ATUALIZADO"

    invoke-virtual {v0, v1}, Lfpv;->a(Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->E:Lfud;

    .line 438
    invoke-virtual {v1}, Lfud;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "R$"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-virtual {v0, v1}, Lfpv;->b(Ljava/lang/String;)V

    .line 439
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfpv;->a(I)V

    .line 441
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    new-instance v0, Lfpv;

    invoke-direct {v0}, Lfpv;-><init>()V

    .line 444
    const-string v1, "PAGAR M\u00cdNIMO"

    invoke-virtual {v0, v1}, Lfpv;->a(Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->E:Lfud;

    invoke-virtual {v1}, Lfud;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfpv;->b(Ljava/lang/String;)V

    .line 446
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lfpv;->a(I)V

    .line 448
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->E:Lfud;

    invoke-virtual {v0}, Lfud;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->E:Lfud;

    invoke-virtual {v0}, Lfud;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->c(Ljava/lang/String;)F

    move-result v0

    .line 452
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 453
    new-instance v0, Lfpv;

    invoke-direct {v0}, Lfpv;-><init>()V

    .line 454
    const-string v1, "PAGAR VALOR PARCIAL"

    invoke-virtual {v0, v1}, Lfpv;->a(Ljava/lang/String;)V

    .line 455
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->E:Lfud;

    invoke-virtual {v1}, Lfud;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfpv;->b(Ljava/lang/String;)V

    .line 456
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lfpv;->a(I)V

    .line 458
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_0
    new-instance v0, Lfpv;

    invoke-direct {v0}, Lfpv;-><init>()V

    .line 463
    const-string v1, "PAGAR OUTRO VALOR"

    invoke-virtual {v0, v1}, Lfpv;->a(Ljava/lang/String;)V

    .line 464
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->E:Lfud;

    invoke-virtual {v1}, Lfud;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "R$"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfpv;->b(Ljava/lang/String;)V

    .line 465
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lfpv;->a(I)V

    .line 467
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    new-instance v1, Lfpw;

    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->c:Ljava/util/List;

    invoke-direct {v1, p0, v0}, Lfpw;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 470
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 471
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 472
    const v0, 0x7f10103a

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->d:Lcom/santander/app/widget/Indicator;

    .line 473
    const v0, 0x7f101037

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->g:Landroid/widget/ImageView;

    .line 474
    const v0, 0x7f101038

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->f:Landroid/widget/ImageView;

    .line 476
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->d:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v1}, Lfpw;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->f:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->g:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1, v2, v3, v4}, Lgpm;->a(Lcom/santander/app/widget/Indicator;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/support/v4/view/ViewPager;)V

    .line 477
    return-void
.end method

.method public static synthetic j(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->y:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 539
    const v0, 0x7f10102e

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 540
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    const v0, 0x7f10102f

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 542
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    const v0, 0x7f101032

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 544
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    const v0, 0x7f101039

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->e:Landroid/support/v4/view/ViewPager;

    .line 547
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->e:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 549
    new-instance v0, Lfjo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfjo;-><init>(Lcom/santander/app/PagamentoFacturaCartoesActivity;Lfjg;)V

    iput-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->D:Lfjo;

    .line 550
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->D:Lfjo;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfjo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 551
    return-void
.end method

.method public static synthetic k(Lcom/santander/app/PagamentoFacturaCartoesActivity;)I
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->P:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->P:I

    return v0
.end method

.method private k()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 555
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->E:Lfud;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->E:Lfud;

    invoke-virtual {v0}, Lfud;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 556
    const v0, 0x7f10102e

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 557
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->E:Lfud;

    invoke-virtual {v1}, Lfud;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    const v0, 0x7f10102f

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 560
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->E:Lfud;

    invoke-virtual {v1}, Lfud;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->E:Lfud;

    invoke-virtual {v1}, Lfud;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->E:Lfud;

    invoke-virtual {v1}, Lfud;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    invoke-virtual {p0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 565
    :cond_0
    const v0, 0x7f101032

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 566
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->E:Lfud;

    invoke-virtual {v1}, Lfud;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    const v0, 0x7f101030

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 569
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 572
    const v0, 0x7f101031

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 573
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 574
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->E:Lfud;

    invoke-virtual {v1}, Lfud;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    const v0, 0x7f101034

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 579
    const v1, 0x7f101033

    invoke-virtual {p0, v1}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->M:Landroid/widget/TextView;

    .line 580
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 581
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 582
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->E:Lfud;

    invoke-virtual {v1}, Lfud;->n()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 583
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->E:Lfud;

    invoke-virtual {v1}, Lfud;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->c(Ljava/lang/String;)F

    move-result v1

    .line 584
    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 585
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 587
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->E:Lfud;

    invoke-virtual {v1}, Lfud;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    :cond_1
    const v0, 0x7f101039

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->e:Landroid/support/v4/view/ViewPager;

    .line 592
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 594
    invoke-direct {p0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->i()V

    .line 595
    invoke-virtual {p0, v3}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->onPageSelected(I)V

    .line 597
    const v0, 0x7f10103f

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 598
    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->E:Lfud;

    invoke-virtual {v1}, Lfud;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->E:Lfud;

    invoke-virtual {v1}, Lfud;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->E:Lfud;

    invoke-virtual {v1}, Lfud;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "N/A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 599
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 605
    :cond_3
    :goto_0
    return-void

    .line 601
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static synthetic l(Lcom/santander/app/PagamentoFacturaCartoesActivity;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->k()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->B:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->F:Lfos;

    invoke-virtual {v0}, Lfos;->b()Ljava/lang/String;

    move-result-object v0

    .line 314
    :goto_0
    return-object v0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->G:Lfos;

    invoke-virtual {v0}, Lfos;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 659
    return-void
.end method

.method public b()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->B:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 319
    const-string v0, "Cartoes_PagamentoDaFatura_DataDoPagamento_Acao"

    const-string v1, "Pagar Hoje"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 323
    :goto_0
    return-object v0

    .line 322
    :cond_0
    const-string v0, "Cartoes_PagamentoDaFatura_DataDoPagamento_Acao"

    const-string v1, "Agendado"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->j()V

    .line 534
    invoke-direct {p0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->f()V

    .line 535
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->v:Lmip;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmip;->c(Z)V

    .line 666
    invoke-virtual {p0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->finishAffinity()V

    .line 667
    invoke-direct {p0, p0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->a(Landroid/content/Context;)Z

    .line 672
    :goto_0
    return-void

    .line 669
    :cond_0
    invoke-super {p0}, Lgrs;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->J:Landroid/content/Intent;

    .line 100
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->J:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->K:Landroid/os/Bundle;

    .line 102
    const v0, 0x7f040336

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->setContentView(I)V

    .line 104
    invoke-virtual {p0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 106
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 108
    const v1, 0x7f090813

    invoke-virtual {p0, v1}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 110
    const v0, 0x7f10103f

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 111
    new-instance v1, Lfjg;

    invoke-direct {v1, p0}, Lfjg;-><init>(Lcom/santander/app/PagamentoFacturaCartoesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iput-object p0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->C:Landroid/app/Activity;

    .line 185
    invoke-direct {p0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->e()V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->c()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 689
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 690
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 483
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 489
    return-void
.end method

.method public onPageSelected(I)V
    .locals 8

    .prologue
    const v7, 0x7f10103b

    const/4 v6, 0x1

    .line 494
    iget-boolean v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->N:Z

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpv;

    invoke-virtual {v0}, Lfpv;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 512
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->e:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->g:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->d:Lcom/santander/app/widget/Indicator;

    move v4, p1

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lgpm;->a(Landroid/support/v4/view/ViewPager;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/santander/app/widget/Indicator;ILandroid/app/Activity;)V

    .line 513
    const v0, 0x7f101050

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 514
    if-eqz v0, :cond_1

    .line 515
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    :cond_1
    invoke-virtual {p0, v7}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpv;

    invoke-virtual {v0}, Lfpv;->c()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 521
    iput-boolean v6, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->I:Z

    .line 526
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->g()V

    .line 528
    iput-boolean v6, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->N:Z

    .line 529
    return-void

    .line 497
    :pswitch_0
    const-string v0, "Cartoes_PagamentoDaFatura_OpcoesPagamento_Acao"

    const-string v1, "PagarValorTotal"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :pswitch_1
    const-string v0, "Cartoes_PagamentoDaFatura_OpcoesPagamento_Acao"

    const-string v1, "PagarValorAtualizado"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :pswitch_2
    const-string v0, "Cartoes_PagamentoDaFatura_OpcoesPagamento_Acao"

    const-string v1, "PagarMinimo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :pswitch_3
    const-string v0, "Cartoes_PagamentoDaFatura_OpcoesPagamento_Acao"

    const-string v1, "PagarOutroValor"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 522
    :cond_3
    iget-object v0, p0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpv;

    invoke-virtual {v0}, Lfpv;->c()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 523
    invoke-virtual {p0, v7}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
