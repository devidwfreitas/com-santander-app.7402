.class public Likl;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Ljava/lang/String; = "FazerPagamen...Fragment"

.field private static final b:Ljava/lang/String; = "dd/MM/yyyy"

.field private static final c:Ljava/lang/String; = "dd-MM-yyyy"

.field private static final d:J = 0x1L


# instance fields
.field private e:Landroid/view/View;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;"
        }
    .end annotation
.end field

.field private transient g:Lcom/santander/app/FazerPagamentoActivity;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/app/Dialog;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/EditText;

.field private transient n:Lcom/santander/app/widget/Carrossel;

.field private transient o:Lfuz;

.field private transient p:Likw;

.field private transient q:Lcom/santander/app/widget/Carrossel;

.field private r:Lfur;

.field private s:Landroid/widget/ImageButton;

.field private t:Landroid/widget/EditText;

.field private u:Landroid/widget/EditText;

.field private v:Landroid/widget/EditText;

.field private w:Landroid/widget/EditText;

.field private x:Landroid/widget/TextView;

.field private transient y:Lmip;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 112
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Likl;->y:Lmip;

    return-void
.end method

.method static synthetic a(Likl;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Likl;->j:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Likl;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Likl;->m:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Likl;Lfuz;)Lfuz;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Likl;->o:Lfuz;

    return-object p1
.end method

.method static synthetic a(Likl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Likl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x24

    const/16 v3, 0x18

    const/16 v2, 0xc

    .line 349
    const-string v0, ""

    .line 351
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 352
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_3

    .line 358
    invoke-direct {p0, p1}, Likl;->d(Ljava/lang/String;)V

    move-object p1, v0

    .line 371
    :cond_0
    :goto_0
    return-object p1

    .line 361
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 365
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Likl;->f:Ljava/util/List;

    move v0, v1

    .line 487
    :goto_0
    iget-object v2, p0, Likl;->y:Lmip;

    invoke-interface {v2}, Lmip;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->q()Lgvx;

    move-result-object v2

    invoke-interface {v2}, Lgvx;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 488
    iget-object v2, p0, Likl;->f:Ljava/util/List;

    iget-object v3, p0, Likl;->y:Lmip;

    invoke-interface {v3}, Lmip;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->q()Lgvx;

    move-result-object v3

    invoke-interface {v3}, Lgvx;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 492
    :cond_0
    :goto_1
    iget-object v0, p0, Likl;->y:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 494
    new-instance v2, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-direct {v2}, Lcom/santander/app/contacorrente/domain/Conta;-><init>()V

    .line 495
    iget-object v0, p0, Likl;->y:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setAgencia(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Likl;->y:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setCuenta(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Likl;->y:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setValor(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Likl;->y:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setDescricao(Ljava/lang/String;)V

    .line 499
    const-string v0, "CARTAOPAG"

    invoke-virtual {v2, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setNomeBanco(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Likl;->y:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setIndicadorMesmoTitular(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Likl;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 505
    :cond_1
    const v0, 0x7f1008b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Likl;->q:Lcom/santander/app/widget/Carrossel;

    .line 507
    new-instance v0, Lfoo;

    .line 508
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Likl;->f:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lfoo;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 510
    iget-object v1, p0, Likl;->q:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v1, v0}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 512
    invoke-virtual {p0}, Likl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 513
    if-eqz v0, :cond_2

    .line 514
    iget-object v1, p0, Likl;->q:Lcom/santander/app/widget/Carrossel;

    const-string v2, "conta"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/santander/app/widget/Carrossel;->setCurrentItem(I)V

    .line 517
    :cond_2
    iput-object p1, p0, Likl;->e:Landroid/view/View;

    .line 518
    iget-object v0, p0, Likl;->q:Lcom/santander/app/widget/Carrossel;

    new-instance v1, Likt;

    invoke-direct {v1, p0}, Likt;-><init>(Likl;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setListener(Lnez;)V

    .line 536
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Likl;->a(Landroid/view/View;Z)V

    .line 537
    return-void
.end method

.method static synthetic b(Likl;)Lfuz;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Likl;->o:Lfuz;

    return-object v0
.end method

.method static synthetic b(Likl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Likl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x1a

    const/16 v5, 0x15

    const/16 v4, 0xf

    const/16 v3, 0xa

    const/4 v2, 0x5

    .line 375
    const-string v0, ""

    .line 376
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 377
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0xe

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_2

    .line 379
    invoke-direct {p0, p1}, Likl;->d(Ljava/lang/String;)V

    .line 386
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 387
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_9

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_8

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_7

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_6

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_5

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x21

    if-le v1, v2, :cond_4

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v2, 0x21

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x22

    if-le v1, v2, :cond_3

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 427
    :cond_1
    :goto_1
    return-object p1

    .line 381
    :cond_2
    iget-object v0, p0, Likl;->l:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 382
    iget-object v0, p0, Likl;->k:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto/16 :goto_0

    .line 403
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 406
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 409
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 412
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 415
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 418
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 421
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1
.end method

.method static synthetic c(Likl;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Likl;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Likl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Likl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 432
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2e

    if-gt v0, v1, :cond_0

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 436
    :cond_0
    return-object p1
.end method

.method static synthetic d(Likl;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Likl;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 571
    iget-object v0, p0, Likl;->p:Likw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Likl;->p:Likw;

    invoke-virtual {v0}, Likw;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 572
    :cond_0
    new-instance v0, Likw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Likw;-><init>(Likl;Likm;)V

    iput-object v0, p0, Likl;->p:Likw;

    .line 573
    iget-object v0, p0, Likl;->p:Likw;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Likw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 575
    :cond_1
    return-void
.end method

.method static synthetic e(Likl;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Likl;->s:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic f(Likl;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Likl;->u:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Likl;)Lcom/santander/app/FazerPagamentoActivity;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Likl;->g:Lcom/santander/app/FazerPagamentoActivity;

    return-object v0
.end method

.method static synthetic h(Likl;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Likl;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Likl;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Likl;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic j(Likl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Likl;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Likl;)Landroid/view/View;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Likl;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Likl;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Likl;->j:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 456
    iget-object v0, p0, Likl;->m:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Likl;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Likl;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 458
    iget-object v0, p0, Likl;->e:Landroid/view/View;

    const v2, 0x7f1008fd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 459
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Likl;->g:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->g:Lfur;

    invoke-static {}, Lmzr;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfur;->b(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Likl;->e:Landroid/view/View;

    const v2, 0x7f100900

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 463
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[^A-Za-z_0-9\\s]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v2, p0, Likl;->g:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v2, v2, Lcom/santander/app/FazerPagamentoActivity;->g:Lfur;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lfur;->a(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Likl;->e:Landroid/view/View;

    const v2, 0x7f1008e5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 467
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[^A-Za-z_0-9\\s]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v2, p0, Likl;->g:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v2, v2, Lcom/santander/app/FazerPagamentoActivity;->g:Lfur;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lfur;->c(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Likl;->g:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->g:Lfur;

    sget-object v2, Lfus;->INSERT:Lfus;

    invoke-virtual {v0, v2}, Lfur;->a(Lfus;)V

    .line 472
    :cond_0
    iget-object v0, p0, Likl;->o:Lfuz;

    if-eqz v0, :cond_3

    iget-object v0, p0, Likl;->o:Lfuz;

    invoke-virtual {v0}, Lfuz;->k()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Likl;->o:Lfuz;

    .line 473
    invoke-virtual {v0}, Lfuz;->k()Ljava/lang/String;

    move-result-object v0

    const-string v2, "YK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 474
    :cond_1
    iget-object v0, p0, Likl;->g:Lcom/santander/app/FazerPagamentoActivity;

    iget-object v2, p0, Likl;->o:Lfuz;

    invoke-virtual {v2}, Lfuz;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/FazerPagamentoActivity;->confirmarTitulos(Ljava/lang/String;Z)V

    .line 479
    :cond_2
    :goto_0
    return-void

    .line 476
    :cond_3
    iget-object v0, p0, Likl;->g:Lcom/santander/app/FazerPagamentoActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/FazerPagamentoActivity;->confirmarContas(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Z)V
    .locals 5

    .prologue
    .line 541
    const v0, 0x7f1008b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Likl;->n:Lcom/santander/app/widget/Carrossel;

    .line 542
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 544
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v0, "dd/MM/yyyy"

    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Likl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    new-instance v1, Lfos;

    invoke-direct {v1}, Lfos;-><init>()V

    iput-object v1, v0, Lcom/santander/app/FazerPagamentoActivity;->a:Lfos;

    .line 547
    invoke-virtual {p0}, Likl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->a:Lfos;

    const-string v1, "PAGAR HOJE"

    invoke-virtual {v0, v1}, Lfos;->a(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Likl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->a:Lfos;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfos;->b(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0}, Likl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    invoke-virtual {p0}, Likl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->a:Lfos;

    iput-object v1, v0, Lcom/santander/app/FazerPagamentoActivity;->c:Lfos;

    .line 551
    invoke-virtual {p0}, Likl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->a:Lfos;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 553
    if-eqz p2, :cond_0

    .line 554
    invoke-virtual {p0}, Likl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    new-instance v1, Lfos;

    invoke-direct {v1}, Lfos;-><init>()V

    iput-object v1, v0, Lcom/santander/app/FazerPagamentoActivity;->b:Lfos;

    .line 555
    invoke-virtual {p0}, Likl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->b:Lfos;

    const-string v1, "AGENDAR"

    invoke-virtual {v0, v1}, Lfos;->a(Ljava/lang/String;)V

    .line 556
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 557
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 558
    const/4 v0, 0x5

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4}, Ljava/util/Calendar;->add(II)V

    .line 559
    invoke-virtual {p0}, Likl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->b:Lfos;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfos;->b(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Likl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->b:Lfos;

    sget-object v1, Lfot;->PICKER:Lfot;

    invoke-virtual {v0, v1}, Lfos;->a(Lfot;)V

    .line 561
    invoke-virtual {p0}, Likl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->b:Lfos;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-virtual {p0}, Likl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    invoke-virtual {p0}, Likl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->b:Lfos;

    iput-object v1, v0, Lcom/santander/app/FazerPagamentoActivity;->d:Lfos;

    .line 565
    :cond_0
    new-instance v0, Lfou;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 566
    invoke-virtual {p0}, Likl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lfou;-><init>(Landroid/content/Context;Ljava/util/Vector;Landroid/app/Activity;)V

    .line 567
    iget-object v1, p0, Likl;->n:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v1, v0}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 568
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 117
    move-object v0, p1

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    iput-object v0, p0, Likl;->g:Lcom/santander/app/FazerPagamentoActivity;

    .line 118
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 119
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const v9, 0x7f100903

    const v8, 0x7f100901

    const v7, 0x7f100900

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 124
    const v0, 0x7f0401d7

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 125
    const v0, 0x7f100902

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Likl;->h:Landroid/widget/LinearLayout;

    .line 126
    const v0, 0x7f100904

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Likl;->i:Landroid/widget/LinearLayout;

    .line 128
    const v0, 0x7f1008f6

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Likl;->m:Landroid/widget/EditText;

    .line 130
    const v0, 0x7f1008fe

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 131
    const v1, 0x7f1008fd

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 132
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 134
    new-instance v4, Likm;

    invoke-direct {v4, p0, v1, v0, v2}, Likm;-><init>(Likl;Landroid/widget/CheckBox;Landroid/widget/LinearLayout;Landroid/widget/EditText;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 146
    invoke-direct {p0, v3}, Likl;->a(Landroid/view/View;)V

    .line 148
    const v2, 0x7f100905

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Likl;->x:Landroid/widget/TextView;

    .line 149
    iget-object v2, p0, Likl;->x:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Likl;->x:Landroid/widget/TextView;

    invoke-static {}, Lmzr;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_0
    iget-object v2, p0, Likl;->e:Landroid/view/View;

    const v4, 0x7f1008e5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Likl;->t:Landroid/widget/EditText;

    .line 154
    iget-object v2, p0, Likl;->e:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Likl;->u:Landroid/widget/EditText;

    .line 155
    iget-object v2, p0, Likl;->e:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Likl;->v:Landroid/widget/EditText;

    .line 156
    new-instance v2, Lguj;

    invoke-direct {v2}, Lguj;-><init>()V

    .line 157
    iget-object v4, p0, Likl;->v:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Lguj;->a(Landroid/widget/EditText;)V

    .line 158
    iget-object v4, p0, Likl;->v:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    iget-object v2, p0, Likl;->e:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Likl;->w:Landroid/widget/EditText;

    .line 160
    const v2, 0x7f1008fc

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Likl;->s:Landroid/widget/ImageButton;

    .line 161
    iget-object v2, p0, Likl;->s:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 162
    iget-object v2, p0, Likl;->s:Landroid/widget/ImageButton;

    new-instance v4, Likn;

    invoke-direct {v4, p0}, Likn;-><init>(Likl;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v2

    invoke-virtual {v2}, Lhau;->C()Lfur;

    move-result-object v2

    iput-object v2, p0, Likl;->r:Lfur;

    .line 174
    iget-object v2, p0, Likl;->r:Lfur;

    if-eqz v2, :cond_3

    .line 175
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lhau;->a(Lfur;)V

    .line 176
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Likl;->t:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Likl;->m:Landroid/widget/EditText;

    invoke-static {}, Lcom/santander/app/FazerPagamentoActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-static {}, Lcom/santander/app/FazerPagamentoActivity;->b()Lfuz;

    move-result-object v0

    iput-object v0, p0, Likl;->o:Lfuz;

    .line 183
    iget-object v0, p0, Likl;->v:Landroid/widget/EditText;

    iget-object v1, p0, Likl;->o:Lfuz;

    invoke-virtual {v1}, Lfuz;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Likl;->o:Lfuz;

    .line 186
    invoke-virtual {v0}, Lfuz;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dd-MM-yyyy"

    const-string v2, "dd/MM/yyyy"

    .line 185
    invoke-static {v0, v1, v2}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v1, p0, Likl;->w:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Likl;->t:Landroid/widget/EditText;

    iget-object v1, p0, Likl;->r:Lfur;

    invoke-virtual {v1}, Lfur;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Likl;->t:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 193
    :cond_1
    iget-object v0, p0, Likl;->u:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Likl;->m:Landroid/widget/EditText;

    invoke-static {}, Lcom/santander/app/FazerPagamentoActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-static {}, Lcom/santander/app/FazerPagamentoActivity;->b()Lfuz;

    move-result-object v0

    iput-object v0, p0, Likl;->o:Lfuz;

    .line 197
    iget-object v0, p0, Likl;->v:Landroid/widget/EditText;

    iget-object v1, p0, Likl;->o:Lfuz;

    invoke-virtual {v1}, Lfuz;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Likl;->o:Lfuz;

    invoke-virtual {v0}, Lfuz;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dd-MM-yyyy"

    const-string v2, "dd/MM/yyyy"

    invoke-static {v0, v1, v2}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    iget-object v1, p0, Likl;->w:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Likl;->u:Landroid/widget/EditText;

    iget-object v1, p0, Likl;->r:Lfur;

    invoke-virtual {v1}, Lfur;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Likl;->u:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 207
    :cond_2
    iget-object v0, p0, Likl;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 208
    iget-object v1, p0, Likl;->x:Landroid/widget/TextView;

    iget-object v0, p0, Likl;->r:Lfur;

    invoke-virtual {v0}, Lfur;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Likl;->r:Lfur;

    .line 209
    invoke-virtual {v0}, Lfur;->b()Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :cond_3
    iget-object v0, p0, Likl;->m:Landroid/widget/EditText;

    new-instance v1, Liko;

    invoke-direct {v1, p0}, Liko;-><init>(Likl;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 280
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Likl;->k:Landroid/widget/EditText;

    .line 281
    new-instance v0, Ljava/util/Locale;

    const-string v1, "pt"

    const-string v2, "BR"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 283
    new-instance v1, Likp;

    invoke-direct {v1, p0, v0}, Likp;-><init>(Likl;Ljava/util/Calendar;)V

    .line 299
    iget-object v2, p0, Likl;->k:Landroid/widget/EditText;

    new-instance v4, Likq;

    invoke-direct {v4, p0, v1, v0}, Likq;-><init>(Likl;Landroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 309
    iget-object v2, p0, Likl;->k:Landroid/widget/EditText;

    new-instance v4, Likr;

    invoke-direct {v4, p0, v1, v0}, Likr;-><init>(Likl;Landroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Likl;->l:Landroid/widget/EditText;

    .line 320
    const v0, 0x7f1008b6

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 322
    new-instance v1, Liks;

    invoke-direct {v1, p0}, Liks;-><init>(Likl;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    return-object v3

    .line 209
    :cond_4
    invoke-static {}, Lmzr;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3

    .prologue
    .line 445
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 446
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 447
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 448
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 450
    invoke-virtual {p0}, Likl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 451
    iget-object v2, p0, Likl;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 453
    return-void
.end method
