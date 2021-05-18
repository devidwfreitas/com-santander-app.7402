.class public Lcom/santander/app/SaldoActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "SaldoActivity"


# instance fields
.field public a:Landroid/app/Dialog;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lcom/santander/app/contacorrente/domain/Conta;

.field private e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

.field private f:Lcom/santander/app/components/view/cardLayout/CardLayout;

.field private g:Lgwt;

.field private w:Lgwa;

.field private x:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

.field private y:Lgwc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/SaldoActivity;->a:Landroid/app/Dialog;

    .line 102
    new-instance v0, Lfni;

    invoke-direct {v0, p0}, Lfni;-><init>(Lcom/santander/app/SaldoActivity;)V

    iput-object v0, p0, Lcom/santander/app/SaldoActivity;->y:Lgwc;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/SaldoActivity;Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/santander/app/SaldoActivity;->d:Lcom/santander/app/contacorrente/domain/Conta;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/SaldoActivity;Lcom/santander/app/contacorrente/domain/SaldoDetalhado;)Lcom/santander/app/contacorrente/domain/SaldoDetalhado;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/santander/app/SaldoActivity;->b()V

    .line 95
    iget-object v0, p0, Lcom/santander/app/SaldoActivity;->w:Lgwa;

    invoke-interface {v0}, Lgwa;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/santander/app/SaldoActivity;->w:Lgwa;

    iget-object v1, p0, Lcom/santander/app/SaldoActivity;->d:Lcom/santander/app/contacorrente/domain/Conta;

    iget-object v2, p0, Lcom/santander/app/SaldoActivity;->y:Lgwc;

    invoke-interface {v0, v1, v2}, Lgwa;->a(Lcom/santander/app/contacorrente/domain/Conta;Lgwc;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/santander/app/SaldoActivity;->w:Lgwa;

    iget-object v1, p0, Lcom/santander/app/SaldoActivity;->d:Lcom/santander/app/contacorrente/domain/Conta;

    iget-object v2, p0, Lcom/santander/app/SaldoActivity;->y:Lgwc;

    invoke-interface {v0, v1, v2}, Lgwa;->b(Lcom/santander/app/contacorrente/domain/Conta;Lgwc;)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/santander/app/SaldoActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/santander/app/SaldoActivity;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/SaldoActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/santander/app/SaldoActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    const v0, 0x7f09043f

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 126
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0903b7

    .line 127
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 129
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0907fa

    .line 130
    invoke-virtual {p0, v1}, Lcom/santander/app/SaldoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfnj;

    invoke-direct {v2, p0}, Lfnj;-><init>(Lcom/santander/app/SaldoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 138
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 141
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/SaldoActivity;->a:Landroid/app/Dialog;

    .line 142
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/SaldoActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/santander/app/SaldoActivity;->d()V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/santander/app/SaldoActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/SaldoActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/santander/app/SaldoActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/SaldoActivity;->a:Landroid/app/Dialog;

    .line 149
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/SaldoActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/santander/app/SaldoActivity;->c()V

    return-void
.end method

.method private d()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    const/high16 v10, -0x10000

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 165
    iget-object v0, p0, Lcom/santander/app/SaldoActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    invoke-virtual {p0}, Lcom/santander/app/SaldoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 168
    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v3, v0

    .line 177
    const v0, 0x7f1010fb    # 1.91497E38f

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 178
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 179
    iget-object v1, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v1}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getSaldoContaCorrenteContaMax()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-nez v1, :cond_14

    .line 180
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 181
    const v0, 0x7f1010fe

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 182
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    :cond_0
    :goto_0
    const v0, 0x7f1010ff

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 199
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 200
    iget-object v1, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v1}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getSaldoBloqueioDia()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-nez v1, :cond_16

    .line 201
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 202
    const v0, 0x7f101102

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 203
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    :cond_1
    :goto_1
    const v0, 0x7f101103

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 220
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 221
    iget-object v1, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v1}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getDesbloqueio1Dia()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-nez v1, :cond_18

    .line 222
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 223
    const v0, 0x7f101106

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 224
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    :cond_2
    :goto_2
    const v0, 0x7f101107

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 241
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 242
    iget-object v1, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v1}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getDesbloqueio2Dias()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-nez v1, :cond_1a

    .line 243
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 244
    const v0, 0x7f10110a

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 245
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    :cond_3
    :goto_3
    const v0, 0x7f10110b

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 262
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 263
    iget-object v1, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v1}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getDesbloqueioMais2Dias()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-nez v1, :cond_1c

    .line 264
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 265
    const v0, 0x7f10110e

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 266
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    :cond_4
    :goto_4
    const v0, 0x7f10110f

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 283
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 284
    iget-object v1, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v1}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getLancamentosProvisionadosCredito()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-nez v1, :cond_1e

    .line 285
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 286
    const v0, 0x7f101112

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 287
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    :cond_5
    :goto_5
    const v0, 0x7f101113

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 304
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 305
    iget-object v1, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v1}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getLancamentosProvisionadosDebito()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-nez v1, :cond_20

    .line 306
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 307
    const v0, 0x7f101116

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 308
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    :cond_6
    :goto_6
    const v0, 0x7f101117

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 325
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 326
    iget-object v1, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v1}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getSaldoTotalContaCorrenteContaMax()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-nez v1, :cond_22

    .line 327
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 328
    const v0, 0x7f10111a

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 329
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    :cond_7
    :goto_7
    const v0, 0x7f10111b

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 346
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 347
    iget-object v1, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v1}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getSaldoBloqueado()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-nez v1, :cond_24

    .line 348
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 349
    const v0, 0x7f10111e

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 350
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 366
    :cond_8
    :goto_8
    const v0, 0x7f10111f

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 367
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 368
    iget-object v1, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v1}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getSaldoBloqueadoJudicial()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-nez v1, :cond_26

    .line 369
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 370
    const v0, 0x7f101122

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 371
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    :cond_9
    :goto_9
    const v0, 0x7f101123

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 388
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 389
    iget-object v1, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v1}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getProvisaoEncargos()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-nez v1, :cond_28

    .line 390
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 391
    const v0, 0x7f101126

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 392
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    :cond_a
    :goto_a
    const v0, 0x7f101127

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 409
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 410
    iget-object v1, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v1}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getJurosAcumuladosAteData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-nez v1, :cond_2a

    .line 411
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 412
    const v0, 0x7f10112a

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 413
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 429
    :cond_b
    :goto_b
    const v0, 0x7f10112b

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 430
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 431
    iget-object v1, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v1}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getIofAcumuladosAteData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-nez v1, :cond_2c

    .line 432
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 433
    const v0, 0x7f10112e

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 434
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    :cond_c
    :goto_c
    const v0, 0x7f10112f

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 451
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 452
    iget-object v1, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v1}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getSaldoDisponivelContaCorrenteContaMax()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-nez v1, :cond_2e

    .line 453
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 454
    const v0, 0x7f101132

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 455
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 471
    :cond_d
    :goto_d
    const v0, 0x7f101133

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 472
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 473
    iget-object v1, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v1}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getSaldoFundosComResgateAutomatico()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-nez v1, :cond_30

    .line 474
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 475
    const v0, 0x7f101136

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 476
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    :cond_e
    :goto_e
    const v0, 0x7f101137

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 493
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 494
    const v1, 0x7f101139

    invoke-virtual {p0, v1}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 495
    iget-object v2, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getSaldoDisponivel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 497
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 498
    :cond_f
    const v2, 0x7f101138

    invoke-virtual {p0, v2}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 499
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 500
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 501
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 502
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 503
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_10

    .line 504
    invoke-virtual {v1, v8, v3, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 507
    :cond_10
    const v0, 0x7f10113b

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 508
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 509
    iget-object v1, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v1}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getLimiteValor1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-nez v1, :cond_32

    .line 510
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 511
    const v0, 0x7f10113e

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 512
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 532
    :cond_11
    :goto_f
    const v0, 0x7f10113f

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 533
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 534
    iget-object v1, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v1}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getLimiteValor2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-nez v1, :cond_34

    .line 535
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 536
    const v0, 0x7f101142

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 537
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 557
    :cond_12
    :goto_10
    const v0, 0x7f101143

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 558
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 559
    iget-object v1, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v1}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getSaldoDisponivelTotal()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-nez v1, :cond_36

    .line 560
    const v0, 0x7f101145    # 1.914985E38f

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 561
    iget-object v1, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v1}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getSaldoDisponivelTotal()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    const v0, 0x7f101146

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 563
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 579
    :cond_13
    :goto_11
    const v0, 0x7f101148

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 580
    new-instance v1, Lfnk;

    invoke-direct {v1, p0}, Lfnk;-><init>(Lcom/santander/app/SaldoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 587
    return-void

    .line 184
    :cond_14
    const v1, 0x7f1010fd

    invoke-virtual {p0, v1}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 185
    iget-object v2, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getSaldoContaCorrenteContaMax()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 187
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    :cond_15
    const v2, 0x7f1010fc

    invoke-virtual {p0, v2}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 189
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 190
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 191
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 192
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 193
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_0

    .line 194
    invoke-virtual {v1, v8, v3, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_0

    .line 205
    :cond_16
    const v1, 0x7f101101

    invoke-virtual {p0, v1}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 206
    iget-object v2, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getSaldoBloqueioDia()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 208
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    :cond_17
    const v2, 0x7f101100

    invoke-virtual {p0, v2}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 210
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 211
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 212
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 213
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 214
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_1

    .line 215
    invoke-virtual {v1, v8, v3, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 226
    :cond_18
    const v1, 0x7f101105

    invoke-virtual {p0, v1}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 227
    iget-object v2, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getDesbloqueio1Dia()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 229
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    :cond_19
    const v2, 0x7f101104

    invoke-virtual {p0, v2}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 231
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 232
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 233
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 234
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 235
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_2

    .line 236
    invoke-virtual {v1, v8, v3, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_2

    .line 247
    :cond_1a
    const v1, 0x7f101109

    invoke-virtual {p0, v1}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 248
    iget-object v2, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getDesbloqueio2Dias()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 250
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    :cond_1b
    const v2, 0x7f101108

    invoke-virtual {p0, v2}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 252
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 253
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 254
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 255
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 256
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_3

    .line 257
    invoke-virtual {v1, v8, v3, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_3

    .line 268
    :cond_1c
    const v1, 0x7f10110d

    invoke-virtual {p0, v1}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 269
    iget-object v2, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getDesbloqueioMais2Dias()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 271
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    :cond_1d
    const v2, 0x7f10110c

    invoke-virtual {p0, v2}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 273
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 274
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 275
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 276
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 277
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_4

    .line 278
    invoke-virtual {v1, v8, v3, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_4

    .line 289
    :cond_1e
    const v1, 0x7f101111

    invoke-virtual {p0, v1}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 290
    iget-object v2, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getLancamentosProvisionadosCredito()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 292
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    :cond_1f
    const v2, 0x7f101110

    invoke-virtual {p0, v2}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 294
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 295
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 296
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 297
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 298
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_5

    .line 299
    invoke-virtual {v1, v8, v3, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_5

    .line 310
    :cond_20
    const v1, 0x7f101115

    invoke-virtual {p0, v1}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 311
    iget-object v2, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getLancamentosProvisionadosDebito()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 313
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    :cond_21
    const v2, 0x7f101114

    invoke-virtual {p0, v2}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 315
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 316
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 317
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 318
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 319
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_6

    .line 320
    invoke-virtual {v1, v8, v3, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_6

    .line 331
    :cond_22
    const v1, 0x7f101119

    invoke-virtual {p0, v1}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 332
    iget-object v2, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getSaldoTotalContaCorrenteContaMax()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 334
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 335
    :cond_23
    const v2, 0x7f101118

    invoke-virtual {p0, v2}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 336
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 337
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 338
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 339
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 340
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_7

    .line 341
    invoke-virtual {v1, v8, v3, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_7

    .line 352
    :cond_24
    const v1, 0x7f10111d

    invoke-virtual {p0, v1}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 353
    iget-object v2, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getSaldoBloqueado()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 355
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    :cond_25
    const v2, 0x7f10111c

    invoke-virtual {p0, v2}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 357
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 358
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 359
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 360
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 361
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_8

    .line 362
    invoke-virtual {v1, v8, v3, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_8

    .line 373
    :cond_26
    const v1, 0x7f101121

    invoke-virtual {p0, v1}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 374
    iget-object v2, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getSaldoBloqueadoJudicial()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 376
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 377
    :cond_27
    const v2, 0x7f101120

    invoke-virtual {p0, v2}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 378
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 379
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 380
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 381
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 382
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_9

    .line 383
    invoke-virtual {v1, v8, v3, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_9

    .line 394
    :cond_28
    const v1, 0x7f101125

    invoke-virtual {p0, v1}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 395
    iget-object v2, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getProvisaoEncargos()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 397
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 398
    :cond_29
    const v2, 0x7f101124

    invoke-virtual {p0, v2}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 399
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 400
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 401
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 402
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 403
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_a

    .line 404
    invoke-virtual {v1, v8, v3, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_a

    .line 415
    :cond_2a
    const v1, 0x7f101129

    invoke-virtual {p0, v1}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 416
    iget-object v2, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getJurosAcumuladosAteData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 418
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 419
    :cond_2b
    const v2, 0x7f101128

    invoke-virtual {p0, v2}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 420
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 421
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 422
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 423
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 424
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_b

    .line 425
    invoke-virtual {v1, v8, v3, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_b

    .line 436
    :cond_2c
    const v1, 0x7f10112d

    invoke-virtual {p0, v1}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 437
    iget-object v2, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getIofAcumuladosAteData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 439
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    :cond_2d
    const v2, 0x7f10112c

    invoke-virtual {p0, v2}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 441
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 442
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 443
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 444
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 445
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_c

    .line 446
    invoke-virtual {v1, v8, v3, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_c

    .line 457
    :cond_2e
    const v1, 0x7f101131

    invoke-virtual {p0, v1}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 458
    iget-object v2, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getSaldoDisponivelContaCorrenteContaMax()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 460
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 461
    :cond_2f
    const v2, 0x7f101130

    invoke-virtual {p0, v2}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 462
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 463
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 464
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 465
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 466
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_d

    .line 467
    invoke-virtual {v1, v8, v3, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_d

    .line 478
    :cond_30
    const v1, 0x7f101135

    invoke-virtual {p0, v1}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 479
    iget-object v2, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getSaldoFundosComResgateAutomatico()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 481
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 482
    :cond_31
    const v2, 0x7f101134

    invoke-virtual {p0, v2}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 483
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 484
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 485
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 486
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 487
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_e

    .line 488
    invoke-virtual {v1, v8, v3, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_e

    .line 515
    :cond_32
    const v1, 0x7f10113c

    invoke-virtual {p0, v1}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 516
    const-string v2, "(+)Limite %s"

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v5}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getLimiteDescricao1()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    const v1, 0x7f10113d

    invoke-virtual {p0, v1}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 519
    iget-object v2, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getLimiteValor1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 521
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 522
    :cond_33
    const v2, 0x7f10113c

    invoke-virtual {p0, v2}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 523
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 524
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 525
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 526
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 527
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_11

    .line 528
    invoke-virtual {v1, v8, v3, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_f

    .line 540
    :cond_34
    const v1, 0x7f101140

    invoke-virtual {p0, v1}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 541
    const-string v2, "(+)Limite %s"

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v5}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getLimiteDescricao2()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    const v1, 0x7f101141

    invoke-virtual {p0, v1}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 544
    iget-object v2, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getLimiteValor2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 546
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 547
    :cond_35
    const v2, 0x7f101140

    invoke-virtual {p0, v2}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 548
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 549
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 550
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 551
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 552
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_12

    .line 553
    invoke-virtual {v1, v8, v3, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_10

    .line 565
    :cond_36
    const v1, 0x7f101145    # 1.914985E38f

    invoke-virtual {p0, v1}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 566
    iget-object v2, p0, Lcom/santander/app/SaldoActivity;->e:Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getSaldoDisponivelTotal()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 568
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 569
    :cond_37
    const v2, 0x7f101144

    invoke-virtual {p0, v2}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 570
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 571
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 572
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 573
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 574
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_13

    .line 575
    invoke-virtual {v1, v8, v3, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_11
.end method


# virtual methods
.method public goEmprestimos(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lhat;->v()Ljoy;

    move-result-object v0

    invoke-virtual {v0}, Ljoy;->a()Ljava/util/List;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0}, Ljow;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f040374

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->setContentView(I)V

    .line 71
    const v0, 0x7f090604

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->c(I)V

    .line 73
    const v0, 0x7f10109a

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/SaldoActivity;->c:Landroid/widget/LinearLayout;

    .line 74
    iget-object v0, p0, Lcom/santander/app/SaldoActivity;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 76
    const v0, 0x7f100614

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/cardLayout/CardLayout;

    iput-object v0, p0, Lcom/santander/app/SaldoActivity;->f:Lcom/santander/app/components/view/cardLayout/CardLayout;

    .line 78
    new-instance v0, Lgwt;

    iget-object v1, p0, Lcom/santander/app/SaldoActivity;->f:Lcom/santander/app/components/view/cardLayout/CardLayout;

    sget-object v2, Lgww;->Saldo:Lgww;

    invoke-direct {v0, p0, v1, v2}, Lgwt;-><init>(Landroid/app/Activity;Lcom/santander/app/components/view/cardLayout/CardLayout;Lgww;)V

    iput-object v0, p0, Lcom/santander/app/SaldoActivity;->g:Lgwt;

    .line 79
    new-instance v0, Lgwe;

    invoke-direct {v0}, Lgwe;-><init>()V

    iput-object v0, p0, Lcom/santander/app/SaldoActivity;->w:Lgwa;

    .line 81
    const v0, 0x7f100139

    invoke-virtual {p0, v0}, Lcom/santander/app/SaldoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iput-object v0, p0, Lcom/santander/app/SaldoActivity;->x:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    .line 82
    iget-object v0, p0, Lcom/santander/app/SaldoActivity;->x:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {}, Lgmy;->e()Lamy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setAdapter(Lamr;)V

    .line 83
    iget-object v0, p0, Lcom/santander/app/SaldoActivity;->x:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v1, Lfnh;

    invoke-direct {v1, p0}, Lfnh;-><init>(Lcom/santander/app/SaldoActivity;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setOnItemSelectedListener(Lamt;)V

    .line 91
    return-void
.end method
