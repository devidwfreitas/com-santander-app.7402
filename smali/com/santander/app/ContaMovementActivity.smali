.class public Lcom/santander/app/ContaMovementActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Ljava/io/Serializable;


# static fields
.field private static final c:J = 0x1L


# instance fields
.field private A:Ljava/util/Date;

.field private B:Landroid/support/v4/widget/NestedScrollView;

.field private C:Landroid/support/v4/widget/NestedScrollView;

.field private D:Landroid/support/v4/widget/NestedScrollView;

.field private E:Landroid/support/v4/widget/NestedScrollView;

.field private F:Landroid/widget/LinearLayout;

.field private G:Landroid/widget/LinearLayout;

.field private H:Landroid/widget/LinearLayout;

.field private I:Landroid/widget/LinearLayout;

.field private J:Landroid/app/Dialog;

.field private K:Lcom/santander/app/contacorrente/domain/ExtratoContract;

.field private L:Lfuy;

.field private M:Lcom/santander/app/components/view/cardLayout/CardLayout;

.field private N:Lcom/santander/app/components/view/cardLayout/CardLayout;

.field private O:Lcom/santander/app/components/view/cardLayout/CardLayout;

.field private P:Lgwt;

.field private Q:Lgwa;

.field private R:Z

.field private S:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/LancamentoContract;",
            ">;"
        }
    .end annotation
.end field

.field private T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/LancamentoContract;",
            ">;"
        }
    .end annotation
.end field

.field private U:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/LancamentoContract;",
            ">;"
        }
    .end annotation
.end field

.field private V:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

.field private W:Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

.field public a:I

.field private final b:Ljava/lang/String;

.field private d:Lcom/santander/app/ContaMovementActivity;

.field private e:Landroid/widget/TabHost;

.field private f:Landroid/app/Dialog;

.field private g:Lcom/santander/app/contacorrente/domain/Conta;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;"
        }
    .end annotation
.end field

.field private x:I

.field private y:I

.field private z:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 64
    const-string v0, "ContaMovementActivity"

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->b:Ljava/lang/String;

    .line 70
    iput-object v2, p0, Lcom/santander/app/ContaMovementActivity;->e:Landroid/widget/TabHost;

    .line 71
    iput-object v2, p0, Lcom/santander/app/ContaMovementActivity;->f:Landroid/app/Dialog;

    .line 76
    iput v1, p0, Lcom/santander/app/ContaMovementActivity;->x:I

    .line 79
    iput v1, p0, Lcom/santander/app/ContaMovementActivity;->y:I

    .line 621
    new-instance v0, Lfhf;

    invoke-direct {v0, p0}, Lfhf;-><init>(Lcom/santander/app/ContaMovementActivity;)V

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->W:Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/ContaMovementActivity;I)I
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/santander/app/ContaMovementActivity;->x:I

    return p1
.end method

.method public static synthetic a(Lcom/santander/app/ContaMovementActivity;Landroid/support/v4/widget/NestedScrollView;)Landroid/support/v4/widget/NestedScrollView;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/santander/app/ContaMovementActivity;->E:Landroid/support/v4/widget/NestedScrollView;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/santander/app/ContaMovementActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 317
    const v1, 0x7f04014a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 318
    const v0, 0x7f1006ac

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 319
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    return-object v1
.end method

.method public static synthetic a(Lcom/santander/app/ContaMovementActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/santander/app/ContaMovementActivity;->I:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/ContaMovementActivity;Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/santander/app/ContaMovementActivity;->g:Lcom/santander/app/contacorrente/domain/Conta;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/ContaMovementActivity;Lcom/santander/app/contacorrente/domain/ExtratoContract;)Lcom/santander/app/contacorrente/domain/ExtratoContract;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/santander/app/ContaMovementActivity;->K:Lcom/santander/app/contacorrente/domain/ExtratoContract;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/ContaMovementActivity;Lfuy;)Lfuy;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/santander/app/ContaMovementActivity;->L:Lfuy;

    return-object p1
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/santander/app/ContaMovementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "conta_selected"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/santander/app/ContaMovementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "conta_selected"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    move-object v1, v0

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->w:Ljava/util/List;

    invoke-static {v0}, Lgmy;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 161
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v2

    move v2, v5

    :goto_1
    iget-object v4, p0, Lcom/santander/app/ContaMovementActivity;->w:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 162
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/santander/app/ContaMovementActivity;->w:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/santander/app/contacorrente/domain/Conta;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanb;

    .line 161
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 166
    :cond_1
    invoke-direct {p0, v3, v0}, Lcom/santander/app/ContaMovementActivity;->a(Ljava/util/List;Lanb;)V

    .line 167
    return-void

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public static synthetic a(Lcom/santander/app/ContaMovementActivity;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/santander/app/ContaMovementActivity;->h()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/ContaMovementActivity;Z)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/santander/app/ContaMovementActivity;->a(Z)V

    return-void
.end method

.method private a(Ljava/util/List;Lanb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lanb;",
            ">;",
            "Lanb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->V:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v1, Lamy;

    invoke-direct {v1, p1}, Lamy;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setAdapter(Lamr;)V

    .line 173
    if-eqz p2, :cond_0

    .line 174
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->V:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-virtual {v0, p2}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setCurrentItem(Ljava/lang/Object;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->V:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v1, Lfhc;

    invoke-direct {v1, p0}, Lfhc;-><init>(Lcom/santander/app/ContaMovementActivity;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setOnItemSelectedListener(Lamt;)V

    .line 186
    return-void
.end method

.method private a(Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/LancamentoContract;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/santander/app/ContaMovementActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v15

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/ContaMovementActivity;->g:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v2}, Lcom/santander/app/contacorrente/domain/Conta;->getValor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 397
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double v4, v2, v4

    .line 399
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/ContaMovementActivity;->K:Lcom/santander/app/contacorrente/domain/ExtratoContract;

    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/ExtratoContract;->getLancamentoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/ContaMovementActivity;->K:Lcom/santander/app/contacorrente/domain/ExtratoContract;

    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/ExtratoContract;->getLancamentoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/santander/app/contacorrente/domain/LancamentoContract;

    .line 401
    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/LancamentoContract;->getHistorico()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/LancamentoContract;->getHistorico()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/LancamentoContract;->getHistorico()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SALDO ANTERIOR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 399
    :cond_0
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 404
    :cond_1
    invoke-interface {v2}, Lcom/santander/app/contacorrente/domain/LancamentoContract;->getValor()Ljava/lang/String;

    move-result-object v2

    .line 405
    const-string v4, "\\."

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ","

    const-string v5, "."

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    goto :goto_1

    .line 409
    :cond_2
    const/4 v2, 0x0

    move v10, v2

    move-wide v12, v4

    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_6

    .line 410
    const v2, 0x7f040322

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 412
    const v2, 0x7f100fc3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 413
    const v3, 0x7f100ffd

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 414
    const v4, 0x7f100fc7

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 415
    const v5, 0x7f100ffe

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 416
    const v6, 0x7f100ffc

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 417
    const v7, 0x7f100fc5

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 422
    const v8, 0x7f100fc9

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 424
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/santander/app/contacorrente/domain/LancamentoContract;

    .line 427
    :try_start_0
    invoke-interface {v9}, Lcom/santander/app/contacorrente/domain/LancamentoContract;->getSaldo()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 428
    invoke-interface {v9}, Lcom/santander/app/contacorrente/domain/LancamentoContract;->getValor()Ljava/lang/String;

    move-result-object v11

    const-string v14, "[.]"

    const-string v17, ""

    .line 429
    move-object/from16 v0, v17

    invoke-virtual {v11, v14, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "[,]"

    const-string v17, "."

    .line 430
    move-object/from16 v0, v17

    invoke-virtual {v11, v14, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 428
    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    .line 431
    add-double v12, v12, v18

    .line 432
    invoke-interface {v9, v12, v13}, Lcom/santander/app/contacorrente/domain/LancamentoContract;->setSaldo(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_3
    :goto_3
    invoke-interface {v9}, Lcom/santander/app/contacorrente/domain/LancamentoContract;->getHistorico()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 440
    invoke-interface {v9}, Lcom/santander/app/contacorrente/domain/LancamentoContract;->getHistorico()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 445
    :goto_4
    invoke-interface {v9}, Lcom/santander/app/contacorrente/domain/LancamentoContract;->getDocto()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-interface {v9}, Lcom/santander/app/contacorrente/domain/LancamentoContract;->getDocto()Ljava/lang/String;

    move-result-object v14

    :goto_5
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    invoke-interface {v9}, Lcom/santander/app/contacorrente/domain/LancamentoContract;->getHistorico()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    invoke-interface {v9}, Lcom/santander/app/contacorrente/domain/LancamentoContract;->getValor()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\."

    const-string v8, ""

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    const-string v8, "."

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 450
    invoke-interface {v9}, Lcom/santander/app/contacorrente/domain/LancamentoContract;->getValor()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    const-string v4, "."

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 451
    invoke-interface {v9}, Lcom/santander/app/contacorrente/domain/LancamentoContract;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnak;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    invoke-interface {v9}, Lcom/santander/app/contacorrente/domain/LancamentoContract;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    new-instance v2, Lfhe;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lfhe;-><init>(Lcom/santander/app/ContaMovementActivity;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    const v2, 0x7f100ffe

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 475
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 409
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto/16 :goto_2

    .line 434
    :catch_0
    move-exception v11

    .line 435
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-interface {v9, v0, v1}, Lcom/santander/app/contacorrente/domain/LancamentoContract;->setSaldo(D)V

    goto/16 :goto_3

    .line 442
    :cond_4
    const-string v11, ""

    goto/16 :goto_4

    .line 445
    :cond_5
    const-string v14, ""

    goto/16 :goto_5

    .line 480
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/santander/app/ContaMovementActivity;->a:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/santander/app/ContaMovementActivity;->a:I

    .line 481
    invoke-direct/range {p0 .. p0}, Lcom/santander/app/ContaMovementActivity;->k()V

    .line 482
    return-void
.end method

.method private a(Z)V
    .locals 10

    .prologue
    const v9, 0x7f100620

    const/4 v2, 0x0

    .line 328
    if-eqz p1, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/santander/app/ContaMovementActivity;->j()V

    .line 330
    iput v2, p0, Lcom/santander/app/ContaMovementActivity;->a:I

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->S:Ljava/util/List;

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->T:Ljava/util/List;

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->U:Ljava/util/List;

    .line 337
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 338
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 339
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 341
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->K:Lcom/santander/app/contacorrente/domain/ExtratoContract;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->K:Lcom/santander/app/contacorrente/domain/ExtratoContract;

    invoke-interface {v0}, Lcom/santander/app/contacorrente/domain/ExtratoContract;->getLancamentoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 342
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->K:Lcom/santander/app/contacorrente/domain/ExtratoContract;

    invoke-interface {v0}, Lcom/santander/app/contacorrente/domain/ExtratoContract;->getLancamentoList()Ljava/util/List;

    move-result-object v6

    move v1, v2

    .line 344
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 345
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/LancamentoContract;

    .line 346
    invoke-interface {v0}, Lcom/santander/app/contacorrente/domain/LancamentoContract;->getHistorico()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 347
    invoke-interface {v0}, Lcom/santander/app/contacorrente/domain/LancamentoContract;->getHistorico()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 348
    invoke-interface {v0}, Lcom/santander/app/contacorrente/domain/LancamentoContract;->getHistorico()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SALDO ANTERIOR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 349
    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-interface {v0}, Lcom/santander/app/contacorrente/domain/LancamentoContract;->getValor()Ljava/lang/String;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 352
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 354
    :cond_3
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 359
    :cond_4
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->F:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v0}, Lcom/santander/app/ContaMovementActivity;->a(Ljava/util/List;Landroid/widget/LinearLayout;)V

    .line 360
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->G:Landroid/widget/LinearLayout;

    invoke-direct {p0, v5, v0}, Lcom/santander/app/ContaMovementActivity;->a(Ljava/util/List;Landroid/widget/LinearLayout;)V

    .line 361
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->H:Landroid/widget/LinearLayout;

    invoke-direct {p0, v4, v0}, Lcom/santander/app/ContaMovementActivity;->a(Ljava/util/List;Landroid/widget/LinearLayout;)V

    .line 363
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->S:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 364
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->T:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 365
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->U:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 367
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 368
    invoke-virtual {p0, v9}, Lcom/santander/app/ContaMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 369
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    :cond_5
    :goto_2
    return-void

    .line 371
    :cond_6
    invoke-virtual {p0, v9}, Lcom/santander/app/ContaMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 372
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 259
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/santander/app/ContaMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->e:Landroid/widget/TabHost;

    .line 260
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->e:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 262
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->e:Landroid/widget/TabHost;

    const-string v1, "tab_test1"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 263
    const-string v1, "TODOS"

    invoke-direct {p0, v1}, Lcom/santander/app/ContaMovementActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 264
    const v1, 0x7f10061d

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 266
    iget-object v1, p0, Lcom/santander/app/ContaMovementActivity;->e:Landroid/widget/TabHost;

    const-string v2, "tab_test1"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 267
    const-string v2, "D\u00c9BITO"

    invoke-direct {p0, v2}, Lcom/santander/app/ContaMovementActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 268
    const v2, 0x7f100621

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 270
    iget-object v2, p0, Lcom/santander/app/ContaMovementActivity;->e:Landroid/widget/TabHost;

    const-string v3, "tab_test1"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 271
    const-string v3, "CR\u00c9DITO"

    invoke-direct {p0, v3}, Lcom/santander/app/ContaMovementActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 272
    const v3, 0x7f100624

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 274
    iget-object v3, p0, Lcom/santander/app/ContaMovementActivity;->e:Landroid/widget/TabHost;

    invoke-virtual {v3, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 275
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->e:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 276
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->e:Landroid/widget/TabHost;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 278
    iget v0, p0, Lcom/santander/app/ContaMovementActivity;->x:I

    if-ne v0, v4, :cond_0

    .line 279
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->e:Landroid/widget/TabHost;

    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 285
    :goto_0
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->e:Landroid/widget/TabHost;

    new-instance v1, Lfhd;

    invoke-direct {v1, p0}, Lfhd;-><init>(Lcom/santander/app/ContaMovementActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 313
    return-void

    .line 280
    :cond_0
    iget v0, p0, Lcom/santander/app/ContaMovementActivity;->x:I

    if-ne v0, v5, :cond_1

    .line 281
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->e:Landroid/widget/TabHost;

    invoke-virtual {v0, v4}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->e:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/santander/app/ContaMovementActivity;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/santander/app/ContaMovementActivity;->i()V

    return-void
.end method

.method public static synthetic b(Lcom/santander/app/ContaMovementActivity;Z)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/santander/app/ContaMovementActivity;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 6

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/santander/app/ContaMovementActivity;->e()V

    .line 549
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/santander/app/ContaMovementActivity;->z:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 551
    iget-object v1, p0, Lcom/santander/app/ContaMovementActivity;->A:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 553
    invoke-direct {p0}, Lcom/santander/app/ContaMovementActivity;->n()V

    .line 555
    new-instance v5, Lfhg;

    invoke-direct {v5, p0, p1}, Lfhg;-><init>(Lcom/santander/app/ContaMovementActivity;Z)V

    .line 557
    iget-boolean v0, p0, Lcom/santander/app/ContaMovementActivity;->R:Z

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->Q:Lgwa;

    iget-object v1, p0, Lcom/santander/app/ContaMovementActivity;->g:Lcom/santander/app/contacorrente/domain/Conta;

    iget-object v4, p0, Lcom/santander/app/ContaMovementActivity;->K:Lcom/santander/app/contacorrente/domain/ExtratoContract;

    invoke-interface/range {v0 .. v5}, Lgwa;->a(Lcom/santander/app/contacorrente/domain/Conta;Ljava/lang/String;Ljava/lang/String;Lcom/santander/app/contacorrente/domain/ExtratoContract;Lgwb;)V

    .line 564
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->Q:Lgwa;

    iget-object v1, p0, Lcom/santander/app/ContaMovementActivity;->g:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-interface {v0, v1, v2, v3, v5}, Lgwa;->a(Lcom/santander/app/contacorrente/domain/Conta;Ljava/lang/String;Ljava/lang/String;Lgwb;)V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/santander/app/ContaMovementActivity;)Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->e:Landroid/widget/TabHost;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/santander/app/ContaMovementActivity;->a(Z)V

    .line 325
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/ContaMovementActivity;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/santander/app/ContaMovementActivity;->x:I

    return v0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 378
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->B:Landroid/support/v4/widget/NestedScrollView;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 379
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 378
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->measure(II)V

    .line 380
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->C:Landroid/support/v4/widget/NestedScrollView;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 381
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 380
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->measure(II)V

    .line 382
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->D:Landroid/support/v4/widget/NestedScrollView;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 383
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 382
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->measure(II)V

    .line 385
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->B:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/NestedScrollView;->setFillViewport(Z)V

    .line 386
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->C:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/NestedScrollView;->setFillViewport(Z)V

    .line 387
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->D:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/NestedScrollView;->setFillViewport(Z)V

    .line 389
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->B:Landroid/support/v4/widget/NestedScrollView;

    iget-object v1, p0, Lcom/santander/app/ContaMovementActivity;->W:Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 390
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->C:Landroid/support/v4/widget/NestedScrollView;

    iget-object v1, p0, Lcom/santander/app/ContaMovementActivity;->W:Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 391
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->D:Landroid/support/v4/widget/NestedScrollView;

    iget-object v1, p0, Lcom/santander/app/ContaMovementActivity;->W:Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 392
    return-void
.end method

.method public static synthetic e(Lcom/santander/app/ContaMovementActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->F:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/santander/app/ContaMovementActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    :goto_0
    return-void

    .line 501
    :cond_0
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->J:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public static synthetic f(Lcom/santander/app/ContaMovementActivity;)Landroid/support/v4/widget/NestedScrollView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->B:Landroid/support/v4/widget/NestedScrollView;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/santander/app/ContaMovementActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->J:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->J:Landroid/app/Dialog;

    .line 509
    :cond_0
    return-void
.end method

.method public static synthetic g(Lcom/santander/app/ContaMovementActivity;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/santander/app/ContaMovementActivity;->k()V

    return-void
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->J:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->J:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic h(Lcom/santander/app/ContaMovementActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->G:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 528
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 530
    const/4 v0, -0x6

    .line 531
    iget-boolean v2, p0, Lcom/santander/app/ContaMovementActivity;->R:Z

    if-eqz v2, :cond_0

    .line 532
    const/16 v0, -0x64

    .line 534
    :cond_0
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 536
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->z:Ljava/util/Date;

    .line 537
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->A:Ljava/util/Date;

    .line 538
    return-void
.end method

.method public static synthetic i(Lcom/santander/app/ContaMovementActivity;)Landroid/support/v4/widget/NestedScrollView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->C:Landroid/support/v4/widget/NestedScrollView;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->K:Lcom/santander/app/contacorrente/domain/ExtratoContract;

    .line 542
    invoke-direct {p0}, Lcom/santander/app/ContaMovementActivity;->j()V

    .line 543
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/santander/app/ContaMovementActivity;->b(Z)V

    .line 544
    return-void
.end method

.method public static synthetic j(Lcom/santander/app/ContaMovementActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->H:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 601
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->B:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 602
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->C:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 603
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->D:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 604
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->F:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->G:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->H:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 611
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 613
    :cond_2
    return-void
.end method

.method public static synthetic k(Lcom/santander/app/ContaMovementActivity;)Landroid/support/v4/widget/NestedScrollView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->D:Landroid/support/v4/widget/NestedScrollView;

    return-object v0
.end method

.method private k()V
    .locals 6

    .prologue
    .line 616
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->W:Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

    iget-object v1, p0, Lcom/santander/app/ContaMovementActivity;->E:Landroid/support/v4/widget/NestedScrollView;

    iget-object v2, p0, Lcom/santander/app/ContaMovementActivity;->E:Landroid/support/v4/widget/NestedScrollView;

    .line 617
    invoke-virtual {v2}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/santander/app/ContaMovementActivity;->E:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v3}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lcom/santander/app/ContaMovementActivity;->E:Landroid/support/v4/widget/NestedScrollView;

    .line 618
    invoke-virtual {v4}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v4

    iget-object v5, p0, Lcom/santander/app/ContaMovementActivity;->E:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v5}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v5

    .line 616
    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;->onScrollChange(Landroid/support/v4/widget/NestedScrollView;IIII)V

    .line 619
    return-void
.end method

.method public static synthetic l(Lcom/santander/app/ContaMovementActivity;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/santander/app/ContaMovementActivity;->f()V

    return-void
.end method

.method public static synthetic m(Lcom/santander/app/ContaMovementActivity;)Lcom/santander/app/ContaMovementActivity;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->d:Lcom/santander/app/ContaMovementActivity;

    return-object v0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 634
    iget v0, p0, Lcom/santander/app/ContaMovementActivity;->y:I

    if-eqz v0, :cond_0

    .line 635
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 636
    iget-object v1, p0, Lcom/santander/app/ContaMovementActivity;->z:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 637
    iget-object v2, p0, Lcom/santander/app/ContaMovementActivity;->A:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 639
    const-string v2, "ContaCorrente_PeriodoExtratoDe"

    invoke-static {v2, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v1, "ContaCorrente_PeriodoExtratoPara"

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :cond_0
    return-void
.end method

.method public static synthetic n(Lcom/santander/app/ContaMovementActivity;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/santander/app/ContaMovementActivity;->j()V

    return-void
.end method

.method public static synthetic o(Lcom/santander/app/ContaMovementActivity;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->g:Lcom/santander/app/contacorrente/domain/Conta;

    return-object v0
.end method

.method public static synthetic p(Lcom/santander/app/ContaMovementActivity;)Z
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/santander/app/ContaMovementActivity;->g()Z

    move-result v0

    return v0
.end method

.method public static synthetic q(Lcom/santander/app/ContaMovementActivity;)Lcom/santander/app/contacorrente/domain/ExtratoContract;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->K:Lcom/santander/app/contacorrente/domain/ExtratoContract;

    return-object v0
.end method


# virtual methods
.method public closeDetails(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 256
    return-void
.end method

.method public goEmprestimos(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 486
    invoke-static {}, Lhat;->v()Ljoy;

    move-result-object v0

    invoke-virtual {v0}, Ljoy;->a()Ljava/util/List;

    move-result-object v0

    .line 488
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 489
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0}, Ljow;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 490
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 491
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 492
    invoke-virtual {p0, v0}, Lcom/santander/app/ContaMovementActivity;->startActivity(Landroid/content/Intent;)V

    .line 496
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const v0, 0x7f04012d

    invoke-virtual {p0, v0}, Lcom/santander/app/ContaMovementActivity;->setContentView(I)V

    .line 119
    const v0, 0x7f090477

    invoke-virtual {p0, v0}, Lcom/santander/app/ContaMovementActivity;->c(I)V

    .line 121
    new-instance v0, Lgwe;

    invoke-direct {v0}, Lgwe;-><init>()V

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->Q:Lgwa;

    .line 122
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->Q:Lgwa;

    invoke-interface {v0}, Lgwa;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/ContaMovementActivity;->R:Z

    .line 124
    iput-object p0, p0, Lcom/santander/app/ContaMovementActivity;->d:Lcom/santander/app/ContaMovementActivity;

    .line 126
    iput v1, p0, Lcom/santander/app/ContaMovementActivity;->x:I

    .line 128
    iput v1, p0, Lcom/santander/app/ContaMovementActivity;->a:I

    .line 130
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->w:Ljava/util/List;

    .line 131
    const v0, 0x7f100139

    invoke-virtual {p0, v0}, Lcom/santander/app/ContaMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->V:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    .line 133
    invoke-direct {p0}, Lcom/santander/app/ContaMovementActivity;->b()V

    .line 135
    const v0, 0x7f10061d

    invoke-virtual {p0, v0}, Lcom/santander/app/ContaMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->B:Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->E:Landroid/support/v4/widget/NestedScrollView;

    .line 136
    const v0, 0x7f100621

    invoke-virtual {p0, v0}, Lcom/santander/app/ContaMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->C:Landroid/support/v4/widget/NestedScrollView;

    .line 137
    const v0, 0x7f100624

    invoke-virtual {p0, v0}, Lcom/santander/app/ContaMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->D:Landroid/support/v4/widget/NestedScrollView;

    .line 139
    const v0, 0x7f10061f

    invoke-virtual {p0, v0}, Lcom/santander/app/ContaMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->F:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->I:Landroid/widget/LinearLayout;

    .line 140
    const v0, 0x7f100623

    invoke-virtual {p0, v0}, Lcom/santander/app/ContaMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->G:Landroid/widget/LinearLayout;

    .line 141
    const v0, 0x7f100626

    invoke-virtual {p0, v0}, Lcom/santander/app/ContaMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->H:Landroid/widget/LinearLayout;

    .line 143
    invoke-direct {p0}, Lcom/santander/app/ContaMovementActivity;->d()V

    .line 145
    const v0, 0x7f10061e

    invoke-virtual {p0, v0}, Lcom/santander/app/ContaMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/cardLayout/CardLayout;

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->M:Lcom/santander/app/components/view/cardLayout/CardLayout;

    .line 146
    const v0, 0x7f100622

    invoke-virtual {p0, v0}, Lcom/santander/app/ContaMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/cardLayout/CardLayout;

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->N:Lcom/santander/app/components/view/cardLayout/CardLayout;

    .line 147
    const v0, 0x7f100625

    invoke-virtual {p0, v0}, Lcom/santander/app/ContaMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/cardLayout/CardLayout;

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->O:Lcom/santander/app/components/view/cardLayout/CardLayout;

    .line 148
    new-instance v0, Lgwt;

    iget-object v2, p0, Lcom/santander/app/ContaMovementActivity;->M:Lcom/santander/app/components/view/cardLayout/CardLayout;

    iget-object v3, p0, Lcom/santander/app/ContaMovementActivity;->N:Lcom/santander/app/components/view/cardLayout/CardLayout;

    iget-object v4, p0, Lcom/santander/app/ContaMovementActivity;->O:Lcom/santander/app/components/view/cardLayout/CardLayout;

    sget-object v5, Lgww;->ContaMovement:Lgww;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lgwt;-><init>(Landroid/app/Activity;Lcom/santander/app/components/view/cardLayout/CardLayout;Lcom/santander/app/components/view/cardLayout/CardLayout;Lcom/santander/app/components/view/cardLayout/CardLayout;Lgww;)V

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->P:Lgwt;

    .line 150
    invoke-direct {p0}, Lcom/santander/app/ContaMovementActivity;->a()V

    .line 151
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/santander/app/ContaMovementActivity;->R:Z

    if-nez v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/santander/app/ContaMovementActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 193
    const v1, 0x7f120010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 196
    :cond_0
    invoke-super {p0, p1}, Lgrs;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 225
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 226
    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 227
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 228
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 230
    invoke-virtual {p1}, Landroid/widget/DatePicker;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget v1, p0, Lcom/santander/app/ContaMovementActivity;->y:I

    if-nez v1, :cond_1

    .line 233
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->z:Ljava/util/Date;

    .line 235
    iput v2, p0, Lcom/santander/app/ContaMovementActivity;->y:I

    .line 236
    new-instance v0, Lije;

    invoke-direct {v0}, Lije;-><init>()V

    .line 237
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 238
    const-string v2, "listener"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 239
    const-string v2, "title"

    const-string v3, "Ate"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 240
    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 241
    invoke-virtual {p0}, Lcom/santander/app/ContaMovementActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "datePicker"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 243
    const-string v0, "ContaCorrente_Acao"

    const-string v1, "SelecionarPeriodo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/ContaMovementActivity;->A:Ljava/util/Date;

    .line 248
    invoke-direct {p0}, Lcom/santander/app/ContaMovementActivity;->i()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/santander/app/ContaMovementActivity;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 520
    const/4 v0, 0x1

    .line 524
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgrs;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 202
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 215
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 204
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/ContaMovementActivity;->y:I

    .line 205
    new-instance v0, Lije;

    invoke-direct {v0}, Lije;-><init>()V

    .line 206
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 207
    const-string v2, "listener"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 208
    const-string v2, "title"

    const-string v3, "De"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 209
    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0}, Lcom/santander/app/ContaMovementActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "datePicker"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x7f10120f
        :pswitch_0
    .end packed-switch
.end method
