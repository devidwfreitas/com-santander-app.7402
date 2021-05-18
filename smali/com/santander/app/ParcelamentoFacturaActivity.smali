.class public Lcom/santander/app/ParcelamentoFacturaActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lnez;


# instance fields
.field private A:Lgon;

.field private B:Lcom/santander/app/widget/Indicator;

.field private C:Landroid/support/v4/view/ViewPager;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/ImageView;

.field private F:Landroid/app/Activity;

.field private G:Lfjz;

.field private H:Lfkb;

.field private I:Lfud;

.field private J:Lful;

.field private K:Lcom/santander/app/contacorrente/domain/Conta;

.field private L:Lfka;

.field private M:Lcom/santander/app/widget/CustomEditText;

.field private N:Landroid/content/Intent;

.field private O:Landroid/os/Bundle;

.field private P:Ljava/lang/String;

.field public a:Landroid/app/Dialog;

.field private final b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfpt;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/santander/app/widget/Indicator;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private w:Lcom/santander/app/widget/Indicator;

.field private x:Landroid/support/v4/view/ViewPager;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 60
    const-string v0, "ParcelamentoFacturaActivity"

    iput-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->b:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->c:Ljava/util/List;

    .line 79
    iput-object v1, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->a:Landroid/app/Dialog;

    .line 85
    iput-object v1, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->K:Lcom/santander/app/contacorrente/domain/Conta;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/ParcelamentoFacturaActivity;)Lfka;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->L:Lfka;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/ParcelamentoFacturaActivity;Lfka;)Lfka;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->L:Lfka;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/ParcelamentoFacturaActivity;Lfud;)Lfud;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->I:Lfud;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/ParcelamentoFacturaActivity;Lful;)Lful;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->J:Lful;

    return-object p1
.end method

.method private a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 726
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 727
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 728
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 729
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v4, "com.santander.app"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    invoke-virtual {p0}, Lcom/santander/app/ParcelamentoFacturaActivity;->onDestroy()V

    .line 731
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 732
    const/4 v2, 0x1

    .line 735
    :cond_0
    return v2

    .line 728
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->F:Landroid/app/Activity;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->x:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->y:Landroid/widget/ImageView;

    return-object v0
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 291
    const v0, 0x7f101069

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->C:Landroid/support/v4/view/ViewPager;

    .line 292
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->C:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lfjw;

    invoke-direct {v1, p0}, Lfjw;-><init>(Lcom/santander/app/ParcelamentoFacturaActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 306
    const v0, 0x7f10106c

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->B:Lcom/santander/app/widget/Indicator;

    .line 307
    const v0, 0x7f10106a

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->E:Landroid/widget/ImageView;

    .line 308
    const v0, 0x7f10106b

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->D:Landroid/widget/ImageView;

    .line 310
    new-instance v0, Lgon;

    iget-object v2, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->C:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->B:Lcom/santander/app/widget/Indicator;

    iget-object v4, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->E:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->D:Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lgon;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    iput-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->A:Lgon;

    .line 314
    invoke-virtual {p0}, Lcom/santander/app/ParcelamentoFacturaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_2

    .line 316
    const-string v1, "cartao"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 317
    invoke-virtual {p0}, Lcom/santander/app/ParcelamentoFacturaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "NUMEROCARTAO"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->P:Ljava/lang/String;

    .line 320
    :goto_0
    iget-object v1, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->P:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->P:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    new-instance v0, Lghu;

    invoke-direct {v0}, Lghu;-><init>()V

    .line 323
    iget-object v1, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lghu;->y(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->s()Lght;

    move-result-object v1

    invoke-interface {v1}, Lght;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->A:Lgon;

    if-gez v0, :cond_1

    :goto_1
    invoke-virtual {v1, v6}, Lgon;->a(I)V

    .line 329
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->A:Lgon;

    invoke-virtual {v0, p0}, Lgon;->a(Lnez;)V

    .line 330
    return-void

    :cond_1
    move v6, v0

    .line 328
    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_0
.end method

.method public static synthetic e(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->z:Landroid/widget/ImageView;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 333
    const v0, 0x7f10106f

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->e:Landroid/support/v4/view/ViewPager;

    .line 334
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->e:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lfjx;

    invoke-direct {v1, p0}, Lfjx;-><init>(Lcom/santander/app/ParcelamentoFacturaActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->c:Ljava/util/List;

    .line 350
    new-instance v0, Lfpt;

    invoke-direct {v0}, Lfpt;-><init>()V

    .line 351
    const-string v1, "Valor total"

    invoke-virtual {v0, v1}, Lfpt;->a(Ljava/lang/String;)V

    .line 352
    const-string v1, "(Parcelas fixas)"

    invoke-virtual {v0, v1}, Lfpt;->b(Ljava/lang/String;)V

    .line 353
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfpt;->a(I)V

    .line 355
    new-instance v1, Lfpt;

    invoke-direct {v1}, Lfpt;-><init>()V

    .line 356
    const-string v2, "Valor parcial"

    invoke-virtual {v1, v2}, Lfpt;->a(Ljava/lang/String;)V

    .line 357
    const-string v2, "(Entrada + Parcelas fixas)"

    invoke-virtual {v1, v2}, Lfpt;->b(Ljava/lang/String;)V

    .line 358
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lfpt;->a(I)V

    .line 360
    iget-object v2, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    new-instance v1, Lfpu;

    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->c:Ljava/util/List;

    invoke-direct {v1, p0, v0}, Lfpu;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 364
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 365
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 367
    const v0, 0x7f101072

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->d:Lcom/santander/app/widget/Indicator;

    .line 368
    const v0, 0x7f101070

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->g:Landroid/widget/ImageView;

    .line 369
    const v0, 0x7f101071    # 1.914942E38f

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->f:Landroid/widget/ImageView;

    .line 371
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->g:Landroid/widget/ImageView;

    new-instance v2, Lfjy;

    invoke-direct {v2, p0}, Lfjy;-><init>(Lcom/santander/app/ParcelamentoFacturaActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->f:Landroid/widget/ImageView;

    new-instance v2, Lfjq;

    invoke-direct {v2, p0}, Lfjq;-><init>(Lcom/santander/app/ParcelamentoFacturaActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->d:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v1}, Lfpu;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->f:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->g:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1, v2, v3, v4}, Lgpm;->a(Lcom/santander/app/widget/Indicator;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/support/v4/view/ViewPager;)V

    .line 395
    return-void
.end method

.method public static synthetic f(Lcom/santander/app/ParcelamentoFacturaActivity;)Lcom/santander/app/widget/Indicator;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->w:Lcom/santander/app/widget/Indicator;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 399
    const v0, 0x7f10102e

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 400
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    const v0, 0x7f10102f

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 402
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    const v0, 0x7f101032

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 404
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    const v0, 0x7f10106e

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 406
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    new-instance v0, Lfjz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfjz;-><init>(Lcom/santander/app/ParcelamentoFacturaActivity;Lfjp;)V

    iput-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->G:Lfjz;

    .line 409
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->G:Lfjz;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfjz;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 410
    return-void
.end method

.method public static synthetic g(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->e:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    .line 424
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->I:Lfud;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->I:Lfud;

    invoke-virtual {v0}, Lfud;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 425
    const v0, 0x7f10102e

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 426
    iget-object v1, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->I:Lfud;

    invoke-virtual {v1}, Lfud;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnak;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    const v0, 0x7f10102f

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->I:Lfud;

    invoke-virtual {v2}, Lfud;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    const v0, 0x7f101032

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->I:Lfud;

    invoke-virtual {v2}, Lfud;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const v3, 0x461c4000    # 10000.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    const-string v3, "###,###,####0.0000"

    invoke-static {v1, v2, v3}, Lnaj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    const v0, 0x7f10106e

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->I:Lfud;

    invoke-virtual {v2}, Lfud;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    const v0, 0x7f10107c

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 436
    iget-object v1, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->I:Lfud;

    invoke-virtual {v1}, Lfud;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->I:Lfud;

    invoke-virtual {v1}, Lfud;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->I:Lfud;

    invoke-virtual {v1}, Lfud;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "N/A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 437
    :cond_0
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 442
    :goto_0
    invoke-virtual {p0, v6}, Lcom/santander/app/ParcelamentoFacturaActivity;->onPageSelected(I)V

    .line 444
    :cond_1
    return-void

    .line 439
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static synthetic h(Lcom/santander/app/ParcelamentoFacturaActivity;)Lgon;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->A:Lgon;

    return-object v0
.end method

.method public static synthetic i(Lcom/santander/app/ParcelamentoFacturaActivity;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/santander/app/ParcelamentoFacturaActivity;->g()V

    return-void
.end method

.method public static synthetic j(Lcom/santander/app/ParcelamentoFacturaActivity;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->K:Lcom/santander/app/contacorrente/domain/Conta;

    return-object v0
.end method

.method public static synthetic k(Lcom/santander/app/ParcelamentoFacturaActivity;)Lful;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->J:Lful;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Lfkb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfkb;-><init>(Lcom/santander/app/ParcelamentoFacturaActivity;Lfjp;)V

    iput-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->H:Lfkb;

    .line 171
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->H:Lfkb;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfkb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 172
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 448
    return-void
.end method

.method public b()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 176
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->J:Lful;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->J:Lful;

    invoke-virtual {v0}, Lful;->K()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->J:Lful;

    invoke-virtual {v0}, Lful;->K()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->J:Lful;

    .line 177
    invoke-virtual {v0}, Lful;->K()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfum;

    invoke-virtual {v0}, Lfum;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->J:Lful;

    .line 178
    invoke-virtual {v0}, Lful;->K()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfum;

    invoke-virtual {v0}, Lfum;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_2

    .line 179
    const v0, 0x7f101073

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 180
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->e:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->g:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->d:Lcom/santander/app/widget/Indicator;

    iget-object v4, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lgpm;->a(Landroid/support/v4/view/ViewPager;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/santander/app/widget/Indicator;ILandroid/app/Activity;)V

    .line 184
    const v0, 0x7f101074

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 185
    const v0, 0x7f101075

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/CustomEditText;

    iput-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->M:Lcom/santander/app/widget/CustomEditText;

    .line 186
    new-instance v0, Lguj;

    invoke-direct {v0}, Lguj;-><init>()V

    .line 187
    iget-object v2, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->M:Lcom/santander/app/widget/CustomEditText;

    invoke-virtual {v0, v2}, Lguj;->a(Landroid/widget/EditText;)V

    .line 188
    iget-object v2, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->M:Lcom/santander/app/widget/CustomEditText;

    invoke-virtual {v2, v0}, Lcom/santander/app/widget/CustomEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 190
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->M:Lcom/santander/app/widget/CustomEditText;

    new-instance v2, Lfjr;

    invoke-direct {v2, p0}, Lfjr;-><init>(Lcom/santander/app/ParcelamentoFacturaActivity;)V

    invoke-virtual {v0, v2}, Lcom/santander/app/widget/CustomEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 204
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 205
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :goto_0
    const v0, 0x7f101078

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->x:Landroid/support/v4/view/ViewPager;

    .line 211
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->x:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lfjs;

    invoke-direct {v1, p0}, Lfjs;-><init>(Lcom/santander/app/ParcelamentoFacturaActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->c:Ljava/util/List;

    move v1, v6

    .line 227
    :goto_1
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->J:Lful;

    invoke-virtual {v0}, Lful;->K()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 228
    new-instance v2, Lfpt;

    invoke-direct {v2}, Lfpt;-><init>()V

    .line 229
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->J:Lful;

    invoke-virtual {v0}, Lful;->K()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfum;

    invoke-virtual {v0}, Lfum;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lfpt;->a(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->J:Lful;

    invoke-virtual {v0}, Lful;->K()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfum;

    invoke-virtual {v0}, Lfum;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lfpt;->b(Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lfpt;->a(I)V

    .line 232
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 207
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 235
    :cond_1
    new-instance v1, Lfpu;

    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->c:Ljava/util/List;

    invoke-direct {v1, p0, v0}, Lfpu;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 237
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->x:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 239
    const v0, 0x7f10107b

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->w:Lcom/santander/app/widget/Indicator;

    .line 240
    const v0, 0x7f101079

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->z:Landroid/widget/ImageView;

    .line 241
    const v0, 0x7f10107a

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->y:Landroid/widget/ImageView;

    .line 243
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->z:Landroid/widget/ImageView;

    new-instance v2, Lfjt;

    invoke-direct {v2, p0}, Lfjt;-><init>(Lcom/santander/app/ParcelamentoFacturaActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->y:Landroid/widget/ImageView;

    new-instance v2, Lfju;

    invoke-direct {v2, p0}, Lfju;-><init>(Lcom/santander/app/ParcelamentoFacturaActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->x:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lfjv;

    invoke-direct {v2, p0}, Lfjv;-><init>(Lcom/santander/app/ParcelamentoFacturaActivity;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 285
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->w:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v1}, Lfpu;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->y:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->z:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->x:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1, v2, v3, v4}, Lgpm;->a(Lcom/santander/app/widget/Indicator;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/support/v4/view/ViewPager;)V

    .line 288
    :cond_2
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/santander/app/ParcelamentoFacturaActivity;->f()V

    .line 459
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 414
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/santander/app/ParcelamentoFacturaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 419
    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->startActivity(Landroid/content/Intent;)V

    .line 420
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->v:Lmip;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmip;->c(Z)V

    .line 717
    invoke-virtual {p0}, Lcom/santander/app/ParcelamentoFacturaActivity;->finishAffinity()V

    .line 718
    invoke-direct {p0, p0}, Lcom/santander/app/ParcelamentoFacturaActivity;->a(Landroid/content/Context;)Z

    .line 723
    :goto_0
    return-void

    .line 720
    :cond_0
    invoke-super {p0}, Lgrs;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/santander/app/ParcelamentoFacturaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->N:Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->N:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->O:Landroid/os/Bundle;

    .line 103
    const v0, 0x7f04033e

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->setContentView(I)V

    .line 104
    invoke-direct {p0}, Lcom/santander/app/ParcelamentoFacturaActivity;->d()V

    .line 109
    invoke-direct {p0}, Lcom/santander/app/ParcelamentoFacturaActivity;->e()V

    .line 110
    invoke-virtual {p0}, Lcom/santander/app/ParcelamentoFacturaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 112
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 114
    const v1, 0x7f090826

    invoke-virtual {p0, v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 116
    iput-object p0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->F:Landroid/app/Activity;

    .line 118
    const v0, 0x7f10107c

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 119
    new-instance v1, Lfjp;

    invoke-direct {v1, p0}, Lfjp;-><init>(Lcom/santander/app/ParcelamentoFacturaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0, v2}, Lhau;->a(Z)V

    .line 138
    invoke-direct {p0}, Lcom/santander/app/ParcelamentoFacturaActivity;->f()V

    .line 140
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 740
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 741
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .prologue
    .line 157
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->e:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->g:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->d:Lcom/santander/app/widget/Indicator;

    iget-object v5, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->F:Landroid/app/Activity;

    move v4, p1

    invoke-static/range {v0 .. v5}, Lgpm;->a(Landroid/support/v4/view/ViewPager;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/santander/app/widget/Indicator;ILandroid/app/Activity;)V

    .line 161
    const v0, 0x7f101073

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 162
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    new-instance v0, Lfkb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfkb;-><init>(Lcom/santander/app/ParcelamentoFacturaActivity;Lfjp;)V

    iput-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->H:Lfkb;

    .line 165
    iget-object v0, p0, Lcom/santander/app/ParcelamentoFacturaActivity;->H:Lfkb;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfkb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 167
    return-void
.end method
