.class public Likx;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Ljava/io/Serializable;


# static fields
.field private static final b:J = 0x1L


# instance fields
.field private final a:Ljava/lang/String;

.field private c:Lcom/santander/app/widget/Carrossel;

.field private d:Landroid/view/View;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/EditText;

.field private p:Lmip;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 54
    const-string v0, "FazerPagamentoTitulosFragment"

    iput-object v0, p0, Likx;->a:Ljava/lang/String;

    .line 71
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Likx;->p:Lmip;

    return-void
.end method

.method static synthetic a(Likx;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Likx;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Likx;->e:Ljava/util/List;

    move v1, v2

    .line 345
    :goto_0
    iget-object v0, p0, Likx;->p:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 346
    iget-object v0, p0, Likx;->p:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 347
    iget-object v3, p0, Likx;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 349
    :cond_0
    :goto_1
    iget-object v0, p0, Likx;->p:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 350
    new-instance v1, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-direct {v1}, Lcom/santander/app/contacorrente/domain/Conta;-><init>()V

    .line 351
    iget-object v0, p0, Likx;->p:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setAgencia(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Likx;->p:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setCuenta(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Likx;->p:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setValor(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Likx;->p:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setDescricao(Ljava/lang/String;)V

    .line 355
    const-string v0, "CARTAOPAG"

    invoke-virtual {v1, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setNomeBanco(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Likx;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 359
    :cond_1
    const v0, 0x7f1008b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    .line 361
    new-instance v1, Lfoo;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Likx;->e:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lfoo;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 363
    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 365
    invoke-virtual {p0}, Likx;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 366
    if-eqz v1, :cond_2

    .line 367
    const-string v2, "conta"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setCurrentItem(I)V

    .line 370
    :cond_2
    iput-object p1, p0, Likx;->d:Landroid/view/View;

    .line 371
    new-instance v1, Likz;

    invoke-direct {v1, p0}, Likz;-><init>(Likx;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setListener(Lnez;)V

    .line 390
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Likx;->a(Landroid/view/View;Z)V

    .line 392
    return-void
.end method

.method static synthetic b(Likx;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Likx;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Likx;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Likx;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Likx;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Likx;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Likx;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Likx;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Likx;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Likx;->m:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Likx;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Likx;->n:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Likx;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Likx;->o:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Likx;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Likx;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic j(Likx;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Likx;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic k(Likx;)Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Likx;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Likx;)Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Likx;->d:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;Z)V
    .locals 5

    .prologue
    .line 396
    const v0, 0x7f1008b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Likx;->c:Lcom/santander/app/widget/Carrossel;

    .line 397
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 399
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v0, "dd/MM/yyyy"

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Likx;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    new-instance v3, Lfos;

    invoke-direct {v3}, Lfos;-><init>()V

    iput-object v3, v0, Lcom/santander/app/FazerPagamentoActivity;->c:Lfos;

    .line 402
    invoke-virtual {p0}, Likx;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->c:Lfos;

    const-string v3, "PAGAR HOJE"

    invoke-virtual {v0, v3}, Lfos;->a(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Likx;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->c:Lfos;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfos;->b(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Likx;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->c:Lfos;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 407
    if-eqz p2, :cond_0

    .line 408
    invoke-virtual {p0}, Likx;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    new-instance v3, Lfos;

    invoke-direct {v3}, Lfos;-><init>()V

    iput-object v3, v0, Lcom/santander/app/FazerPagamentoActivity;->d:Lfos;

    .line 409
    invoke-virtual {p0}, Likx;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->d:Lfos;

    const-string v3, "AGENDAR"

    invoke-virtual {v0, v3}, Lfos;->a(Ljava/lang/String;)V

    .line 410
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 411
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 412
    const/4 v0, 0x5

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Ljava/util/Calendar;->add(II)V

    .line 413
    invoke-virtual {p0}, Likx;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->d:Lfos;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfos;->b(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Likx;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->d:Lfos;

    sget-object v2, Lfot;->PICKER:Lfot;

    invoke-virtual {v0, v2}, Lfos;->a(Lfot;)V

    .line 415
    invoke-virtual {p0}, Likx;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->d:Lfos;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_0
    new-instance v0, Lfou;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Likx;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lfou;-><init>(Landroid/content/Context;Ljava/util/Vector;Landroid/app/Activity;)V

    .line 420
    iget-object v1, p0, Likx;->c:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v1, v0}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 421
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const v4, 0x7f100901

    .line 76
    const v0, 0x7f0401d8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 78
    invoke-direct {p0, v1}, Likx;->a(Landroid/view/View;)V

    .line 80
    const v0, 0x7f100905

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lmzr;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_0
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 86
    new-instance v2, Lguj;

    invoke-direct {v2}, Lguj;-><init>()V

    .line 87
    invoke-virtual {v2, v0}, Lguj;->a(Landroid/widget/EditText;)V

    .line 88
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 90
    const v0, 0x7f1008f6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Likx;->h:Landroid/widget/EditText;

    .line 91
    const v0, 0x7f1008f7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Likx;->i:Landroid/widget/EditText;

    .line 92
    const v0, 0x7f1008f8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Likx;->j:Landroid/widget/EditText;

    .line 93
    const v0, 0x7f1008f9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Likx;->k:Landroid/widget/EditText;

    .line 94
    const v0, 0x7f100906

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Likx;->l:Landroid/widget/EditText;

    .line 95
    const v0, 0x7f100907

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Likx;->m:Landroid/widget/EditText;

    .line 96
    const v0, 0x7f100908

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Likx;->n:Landroid/widget/EditText;

    .line 97
    const v0, 0x7f100909

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Likx;->o:Landroid/widget/EditText;

    .line 99
    iget-object v0, p0, Likx;->h:Landroid/widget/EditText;

    new-instance v2, Liky;

    invoke-direct {v2, p0}, Liky;-><init>(Likx;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 115
    iget-object v0, p0, Likx;->i:Landroid/widget/EditText;

    new-instance v2, Lila;

    invoke-direct {v2, p0}, Lila;-><init>(Likx;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    iget-object v0, p0, Likx;->j:Landroid/widget/EditText;

    new-instance v2, Lilb;

    invoke-direct {v2, p0}, Lilb;-><init>(Likx;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 147
    iget-object v0, p0, Likx;->k:Landroid/widget/EditText;

    new-instance v2, Lilc;

    invoke-direct {v2, p0}, Lilc;-><init>(Likx;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 163
    iget-object v0, p0, Likx;->l:Landroid/widget/EditText;

    new-instance v2, Lild;

    invoke-direct {v2, p0}, Lild;-><init>(Likx;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    iget-object v0, p0, Likx;->m:Landroid/widget/EditText;

    new-instance v2, Lile;

    invoke-direct {v2, p0}, Lile;-><init>(Likx;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 195
    iget-object v0, p0, Likx;->n:Landroid/widget/EditText;

    new-instance v2, Lilf;

    invoke-direct {v2, p0}, Lilf;-><init>(Likx;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 211
    const v0, 0x7f100903

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Likx;->f:Landroid/widget/EditText;

    .line 212
    new-instance v0, Ljava/util/Locale;

    const-string v2, "pt"

    const-string v3, "BR"

    invoke-direct {v0, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 214
    iget-object v2, p0, Likx;->f:Landroid/widget/EditText;

    new-instance v3, Lilg;

    invoke-direct {v3, p0, v0}, Lilg;-><init>(Likx;Ljava/util/Calendar;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 257
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Likx;->g:Landroid/widget/EditText;

    .line 259
    iget-object v0, p0, Likx;->o:Landroid/widget/EditText;

    new-instance v2, Lilh;

    invoke-direct {v2, p0}, Lilh;-><init>(Likx;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 319
    return-object v1
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3

    .prologue
    .line 327
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 328
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 329
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 330
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 333
    invoke-virtual {p0}, Likx;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 334
    iget-object v2, p0, Likx;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 336
    return-void
.end method
