.class public Lzs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "1"

.field public static final b:Ljava/lang/String; = "4"

.field public static final c:Ljava/lang/String; = "5"

.field private static d:Lzs;


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lks;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method private a(Lace;Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lace;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    const-string v2, "aplicacaoEntity"

    new-instance v3, Leju;

    invoke-direct {v3}, Leju;-><init>()V

    invoke-virtual {v3}, Leju;->j()Lejm;

    move-result-object v3

    invoke-virtual {v3, p1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 130
    return-object v1
.end method

.method private a(Lacg;Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lacg;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 115
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    if-eqz p1, :cond_0

    .line 118
    const-string v2, "to"

    new-instance v3, Leju;

    invoke-direct {v3}, Leju;-><init>()V

    invoke-virtual {v3}, Leju;->j()Lejm;

    move-result-object v3

    invoke-virtual {v3, p1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 122
    :cond_0
    return-object v1
.end method

.method static synthetic a(Lzs;)Lks;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lzs;->f:Lks;

    return-object v0
.end method

.method public static declared-synchronized a()Lzs;
    .locals 2

    .prologue
    .line 75
    const-class v1, Lzs;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lzs;->d:Lzs;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lzs;

    invoke-direct {v0}, Lzs;-><init>()V

    sput-object v0, Lzs;->d:Lzs;

    .line 78
    :cond_0
    sget-object v0, Lzs;->d:Lzs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lzs;->e:Landroid/content/Context;

    .line 637
    return-void
.end method


# virtual methods
.method public a([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lzs;->f:Lks;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lzs;->f:Lks;

    invoke-interface {v0, p1}, Lks;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 666
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lzx;)V
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lzs;->f:Lks;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lzs;->f:Lks;

    invoke-interface {v0, p2}, Lks;->a(Lzx;)V

    .line 655
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-virtual {p0, p1, v0}, Lzs;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 225
    return-void
.end method

.method public a(Landroid/content/Context;Lace;)V
    .locals 2

    .prologue
    .line 481
    const-class v0, Lbr/com/santander/investimentoV2/features/termos/view/TermosCondicoesActivity;

    invoke-direct {p0, p2, p1, v0}, Lzs;->a(Lace;Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 482
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 483
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 484
    return-void
.end method

.method public a(Landroid/content/Context;Lacg;)V
    .locals 2

    .prologue
    .line 313
    const-class v0, Lbr/com/santander/investimentoV2/features/detalhes/view/DetalheSubProdutoActivity;

    invoke-direct {p0, p2, p1, v0}, Lzs;->a(Lacg;Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 314
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 315
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 316
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 317
    return-void
.end method

.method public a(Landroid/content/Context;Lacg;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 513
    const-class v0, Lbr/com/santander/investimentoV2/features/efetivacao/view/EfetivacaoActivity;

    invoke-direct {p0, p2, p1, v0}, Lzs;->a(Lacg;Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 514
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 515
    const-string v2, "otp"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 517
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 518
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 519
    return-void
.end method

.method public a(Landroid/content/Context;Lacg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 469
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/santander/investimentoV2/features/termos/view/TermosRecusaActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 470
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 471
    const-string v2, "to"

    new-instance v3, Leju;

    invoke-direct {v3}, Leju;-><init>()V

    invoke-virtual {v3}, Leju;->j()Lejm;

    move-result-object v3

    invoke-virtual {v3, p2}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v2, "message"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 476
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 477
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 478
    return-void
.end method

.method public a(Landroid/content/Context;Lacg;Lsy;)V
    .locals 4

    .prologue
    .line 550
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0}, Laca;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lzs;->l(Landroid/content/Context;Lacg;)V

    .line 562
    :goto_0
    return-void

    .line 553
    :cond_0
    invoke-direct {p0, p1}, Lzs;->e(Landroid/content/Context;)V

    .line 554
    iget-object v0, p0, Lzs;->e:Landroid/content/Context;

    const-class v1, Lbr/com/santander/investimentoV2/features/resgate/view/ResgateContratosActivity;

    invoke-direct {p0, p2, v0, v1}, Lzs;->a(Lacg;Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 555
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 556
    const-string v2, "family"

    new-instance v3, Leju;

    invoke-direct {v3}, Leju;-><init>()V

    invoke-virtual {v3}, Leju;->j()Lejm;

    move-result-object v3

    invoke-virtual {v3, p3}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 559
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 560
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lacg;Lyt;)V
    .locals 4

    .prologue
    .line 504
    const-class v0, Lbr/com/santander/investimentoV2/features/efetivacao/view/EfetivacaoActivity;

    invoke-direct {p0, p2, p1, v0}, Lzs;->a(Lacg;Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 506
    const-string v2, "cso"

    new-instance v3, Leju;

    invoke-direct {v3}, Leju;-><init>()V

    invoke-virtual {v3}, Leju;->j()Lejm;

    move-result-object v3

    invoke-virtual {v3, p3}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 508
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 509
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 510
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 86
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Llg;->app_compartilhar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 102
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 104
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Llg;->app_compartilhar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 106
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Llg;->app_compartilhar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lace;Lacg;)V
    .locals 4

    .prologue
    .line 588
    invoke-direct {p0, p1}, Lzs;->e(Landroid/content/Context;)V

    .line 589
    const-class v0, Lbr/com/santander/investimentoV2/features/recomendacao/view/RecomendacaoActivity;

    invoke-direct {p0, p6, p1, v0}, Lzs;->a(Lacg;Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 591
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 592
    const-string v2, "tipoRecomendacao"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v2, "recomendacaoValorTotalInvestimento"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v2, "recomendacaoValorParcialInvestimento"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v2, "recomendacaoApplicationEntity"

    new-instance v3, Leju;

    invoke-direct {v3}, Leju;-><init>()V

    invoke-virtual {v3}, Leju;->j()Lejm;

    move-result-object v3

    invoke-virtual {v3, p5}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 597
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 598
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 599
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lzx;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 240
    if-eqz p3, :cond_0

    .line 241
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Llg;->aviso_saida_para_acesso_url_externa:I

    .line 242
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Aten\u00e7\u00e3o"

    .line 243
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 244
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->app_ok:I

    new-instance v2, Lzu;

    invoke-direct {v2, p0, p2, p1, p3}, Lzu;-><init>(Lzs;Ljava/lang/String;Landroid/content/Context;Lzx;)V

    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->app_cancelar:I

    new-instance v2, Lzt;

    invoke-direct {v2, p0, p2, p1}, Lzt;-><init>(Lzs;Ljava/lang/String;Landroid/content/Context;)V

    .line 257
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 310
    :goto_0
    return-void

    .line 274
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "a\u00e7\u00f5es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    sget v4, Llg;->tag_name_popup_corretora_acoes:I

    .line 279
    :goto_1
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Aten\u00e7\u00e3o"

    .line 280
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->aviso_saida_para_outro_app_santander:I

    .line 281
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 282
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Llg;->app_ok:I

    new-instance v0, Lzw;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lzw;-><init>(Lzs;Ljava/lang/String;Landroid/content/Context;ILzx;)V

    .line 283
    invoke-virtual {v6, v7, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->app_cancelar:I

    new-instance v2, Lzv;

    invoke-direct {v2, p0, p2, p1, v4}, Lzv;-><init>(Lzs;Ljava/lang/String;Landroid/content/Context;I)V

    .line 295
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 277
    :cond_1
    sget v4, Llg;->tag_name_popup_corretora_outros:I

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/santander/investimentoV2/features/home/view/HomeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 232
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 233
    const-string v1, "params"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 235
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 236
    return-void
.end method

.method public a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lzs;->a(Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0, p1}, Lzs;->a(Landroid/content/Context;)V

    .line 207
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 184
    invoke-virtual/range {p0 .. p6}, Lzs;->a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;)V

    .line 186
    return-void
.end method

.method public a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 342
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lzs;->a(Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    new-instance v0, Lacg;

    invoke-direct {v0}, Lacg;-><init>()V

    .line 345
    invoke-virtual {v0, p7}, Lacg;->f(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0, p8}, Lacg;->a(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0, p1, v0}, Lzs;->j(Landroid/content/Context;Lacg;)V

    .line 353
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-virtual/range {p0 .. p6}, Lzs;->a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 407
    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Lzs;->a(Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 408
    new-instance v4, Lacg;

    invoke-direct {v4}, Lacg;-><init>()V

    .line 410
    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Lacg;->f(Ljava/lang/String;)V

    .line 411
    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Lacg;->c(Ljava/lang/String;)V

    .line 412
    new-instance v5, Lto;

    move-object/from16 v0, p9

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    invoke-direct {v5, v0, v1, v2, v3}, Lto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lacg;->a(Lto;)V

    .line 414
    invoke-virtual {p0, p1, v4}, Lzs;->b(Landroid/content/Context;Lacg;)V

    .line 419
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-virtual/range {p0 .. p6}, Lzs;->a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;Z)V
    .locals 0

    .prologue
    .line 217
    sput-boolean p7, Lte;->a:Z

    .line 218
    invoke-virtual/range {p0 .. p6}, Lzs;->a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;)V

    .line 219
    return-void
.end method

.method public a(Landroid/content/Context;Luz;Lacg;)V
    .locals 4

    .prologue
    .line 571
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/santander/investimentoV2/features/listagemSubproduto/view/ListagemTodosSubprodutosActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 572
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 573
    const-string v2, "to"

    new-instance v3, Leju;

    invoke-direct {v3}, Leju;-><init>()V

    invoke-virtual {v3}, Leju;->j()Lejm;

    move-result-object v3

    invoke-virtual {v3, p3}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v2, "family"

    new-instance v3, Leju;

    invoke-direct {v3}, Leju;-><init>()V

    invoke-virtual {v3}, Leju;->j()Lejm;

    move-result-object v3

    invoke-virtual {v3, p2}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 576
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 577
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 578
    return-void
.end method

.method public a(Landroid/content/Context;Lxw;)V
    .locals 4

    .prologue
    .line 487
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/santander/investimentoV2/features/termos/view/TermosAceiteItemActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 489
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 490
    const-string v2, "model"

    new-instance v3, Leju;

    invoke-direct {v3}, Leju;-><init>()V

    invoke-virtual {v3}, Leju;->j()Lejm;

    move-result-object v3

    invoke-virtual {v3, p2}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 492
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 493
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 494
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lzs;->f:Lks;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lzs;->f:Lks;

    invoke-interface {v0, p1}, Lks;->a(Ljava/lang/String;)V

    .line 716
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lzs;->f:Lks;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lzs;->f:Lks;

    invoke-interface {v0, p1, p2, p3}, Lks;->a(Ljava/lang/String;D)V

    .line 726
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lzs;->f:Lks;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lzs;->f:Lks;

    invoke-interface {v0, p1, p2}, Lks;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 694
    iget-object v0, p0, Lzs;->f:Lks;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lzs;->f:Lks;

    invoke-interface {v0, p1, p2, p3}, Lks;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 697
    :cond_0
    return-void
.end method

.method public a(Lyw;)V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lzs;->f:Lks;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lzs;->f:Lks;

    invoke-interface {v0, p1}, Lks;->a(Lyw;)V

    .line 676
    :cond_0
    return-void
.end method

.method public a(Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 142
    iput-object p4, p0, Lzs;->f:Lks;

    .line 143
    sget-object v1, Lach;->USER_PRIVATE:Lach;

    invoke-virtual {v1}, Lach;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "Segmento"

    const-string v2, "Abrindo investimento Antigo: usu\u00e1rio Private"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Lzs;->d()V

    .line 163
    :goto_0
    return v0

    .line 148
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 149
    const-string v0, "Segmento"

    const-string v1, "Abrindo investimento Novo: tudo OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Labp;->b()Labp;

    move-result-object v0

    invoke-virtual {v0, p1}, Labp;->a(Lje;)V

    .line 153
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0, p3}, Laca;->a(Lji;)V

    .line 154
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0, p2}, Laca;->a(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0, p5}, Laca;->a(Ljava/lang/Boolean;)V

    .line 157
    iput-object p4, p0, Lzs;->f:Lks;

    .line 158
    const/4 v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    const-string v1, "Segmento"

    const-string v2, "Abrindo investimento Antigo: Parametros inv\u00e1lidos"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0}, Lzs;->d()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 462
    new-instance v0, Llo;

    invoke-direct {v0}, Llo;-><init>()V

    .line 463
    invoke-virtual {v0}, Llo;->a()V

    .line 464
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 446
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0}, Laca;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lzs;->l(Landroid/content/Context;Lacg;)V

    .line 456
    :goto_0
    return-void

    .line 449
    :cond_0
    new-instance v0, Lacg;

    invoke-direct {v0}, Lacg;-><init>()V

    const-class v1, Lbr/com/santander/investimentoV2/features/carrinho/view/CarrinhoActivity;

    invoke-direct {p0, v0, p1, v1}, Lzs;->a(Lacg;Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 451
    const-string v2, "KD"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 452
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 453
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 454
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Lacg;)V
    .locals 2

    .prologue
    .line 320
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0}, Laca;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0, p1, p2}, Lzs;->l(Landroid/content/Context;Lacg;)V

    .line 327
    :goto_0
    return-void

    .line 323
    :cond_0
    const-class v0, Lbr/com/santander/investimentoV2/features/configuracao/view/ConfigurarAplicacaoActivity;

    invoke-direct {p0, p2, p1, v0}, Lzs;->a(Lacg;Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 324
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 325
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 109
    const-string v0, "OPEN URL"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public b(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 364
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lzs;->a(Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    new-instance v0, Lacg;

    invoke-direct {v0}, Lacg;-><init>()V

    .line 367
    invoke-virtual {v0, p7}, Lacg;->f(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0, p1, v0}, Lzs;->j(Landroid/content/Context;Lacg;)V

    .line 374
    :goto_0
    return-void

    .line 371
    :cond_0
    invoke-virtual/range {p0 .. p6}, Lzs;->a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lzs;->f:Lks;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lzs;->f:Lks;

    invoke-interface {v0, p1, p2}, Lks;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :cond_0
    return-void
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lzs;->e:Landroid/content/Context;

    return-object v0
.end method

.method public c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 618
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget v1, Llg;->home_mobile_pf:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 619
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :goto_0
    return-void

    .line 620
    :catch_0
    move-exception v0

    .line 621
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public c(Landroid/content/Context;Lacg;)V
    .locals 2

    .prologue
    .line 422
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0}, Laca;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p0, p1, p2}, Lzs;->l(Landroid/content/Context;Lacg;)V

    .line 430
    :goto_0
    return-void

    .line 425
    :cond_0
    const-string v0, "PRODUCT_"

    invoke-virtual {p2}, Lacg;->n()Lto;

    move-result-object v1

    invoke-virtual {v1}, Lto;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-class v0, Lbr/com/santander/investimentoV2/features/resgate/view/ResgateConfigurarActivity;

    invoke-direct {p0, p2, p1, v0}, Lzs;->a(Lacg;Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 427
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 428
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 611
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 613
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 614
    return-void
.end method

.method public c(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 384
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lzs;->a(Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    new-instance v0, Lacg;

    invoke-direct {v0}, Lacg;-><init>()V

    .line 387
    invoke-virtual {v0, p7}, Lacg;->f(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0, p1, v0}, Lzs;->h(Landroid/content/Context;Lacg;)V

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-virtual/range {p0 .. p6}, Lzs;->a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lzs;->f:Lks;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lzs;->f:Lks;

    invoke-interface {v0}, Lks;->a()V

    .line 646
    :cond_0
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 626
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://santander.custhelp.com/app/chat/chat_santander/p/94"

    .line 627
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 628
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 629
    return-void
.end method

.method public d(Landroid/content/Context;Lacg;)V
    .locals 2

    .prologue
    .line 433
    const-class v0, Lbr/com/santander/investimentoV2/features/comprovantes/view/NotasNegociacaoActivity;

    invoke-direct {p0, p2, p1, v0}, Lzs;->a(Lacg;Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 434
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 435
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 436
    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 729
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 730
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 731
    const-string v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    :goto_0
    return-void

    .line 735
    :catch_0
    move-exception v1

    .line 736
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public e(Landroid/content/Context;Lacg;)V
    .locals 2

    .prologue
    .line 439
    const-class v0, Lbr/com/santander/investimentoV2/features/carrinho/view/CarrinhoActivity;

    invoke-direct {p0, p2, p1, v0}, Lzs;->a(Lacg;Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 440
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 441
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 442
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 443
    return-void
.end method

.method public f(Landroid/content/Context;Lacg;)V
    .locals 2

    .prologue
    .line 497
    const-class v0, Lbr/com/santander/investimentoV2/features/comprovantes/view/ComprovantesActivity;

    invoke-direct {p0, p2, p1, v0}, Lzs;->a(Lacg;Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 498
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 499
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 500
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 501
    return-void
.end method

.method public g(Landroid/content/Context;Lacg;)V
    .locals 2

    .prologue
    .line 522
    const-class v0, Lbr/com/santander/investimentoV2/features/cdbProgressivo/view/CdbProgressivoActivity;

    invoke-direct {p0, p2, p1, v0}, Lzs;->a(Lacg;Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 523
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 524
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 525
    return-void
.end method

.method public h(Landroid/content/Context;Lacg;)V
    .locals 2

    .prologue
    .line 528
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0}, Laca;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lzs;->l(Landroid/content/Context;Lacg;)V

    .line 536
    :goto_0
    return-void

    .line 531
    :cond_0
    invoke-direct {p0, p1}, Lzs;->e(Landroid/content/Context;)V

    .line 532
    iget-object v0, p0, Lzs;->e:Landroid/content/Context;

    const-class v1, Lbr/com/santander/investimentoV2/features/configurarInvestimentos/view/ConfigurarInvestimentosActivity;

    invoke-direct {p0, p2, v0, v1}, Lzs;->a(Lacg;Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 533
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 534
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public i(Landroid/content/Context;Lacg;)V
    .locals 2

    .prologue
    .line 539
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0}, Laca;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lzs;->l(Landroid/content/Context;Lacg;)V

    .line 547
    :goto_0
    return-void

    .line 542
    :cond_0
    invoke-direct {p0, p1}, Lzs;->e(Landroid/content/Context;)V

    .line 543
    iget-object v0, p0, Lzs;->e:Landroid/content/Context;

    const-class v1, Lbr/com/santander/investimentoV2/features/resgate/view/ResgateActivity;

    invoke-direct {p0, p2, v0, v1}, Lzs;->a(Lacg;Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 544
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 545
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public j(Landroid/content/Context;Lacg;)V
    .locals 2

    .prologue
    .line 565
    const-class v0, Lbr/com/santander/investimentoV2/features/listagemSubproduto/view/ListagemSubprodutoActivity;

    invoke-direct {p0, p2, p1, v0}, Lzs;->a(Lacg;Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 566
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 567
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 568
    return-void
.end method

.method public k(Landroid/content/Context;Lacg;)V
    .locals 2

    .prologue
    .line 581
    invoke-direct {p0, p1}, Lzs;->e(Landroid/content/Context;)V

    .line 582
    const-class v0, Lbr/com/santander/investimentoV2/features/investirPorValor/view/InvestirPorValorActivity;

    invoke-direct {p0, p2, p1, v0}, Lzs;->a(Lacg;Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 583
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 584
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 585
    return-void
.end method

.method public l(Landroid/content/Context;Lacg;)V
    .locals 2

    .prologue
    .line 602
    invoke-direct {p0, p1}, Lzs;->e(Landroid/content/Context;)V

    .line 603
    const-class v0, Lbr/com/santander/investimentoV2/features/validacao/view/ValidacaoActivity;

    invoke-direct {p0, p2, p1, v0}, Lzs;->a(Lacg;Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 604
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 605
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 606
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 607
    return-void
.end method
