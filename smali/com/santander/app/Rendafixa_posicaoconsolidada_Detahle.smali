.class public Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 29
    const-string v0, "Rendafixa_posicaoconsolidada_Detahle"

    iput-object v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 97
    const-string v0, ""

    .line 98
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "- "

    .line 101
    :cond_0
    const-string v0, "[+]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[-]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    :try_start_0
    const-string v0, "00000000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string p1, "0,00000"

    .line 123
    :goto_0
    return-object p1

    .line 114
    :cond_0
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0}, Ljava/text/DecimalFormatSymbols;-><init>()V

    .line 115
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 116
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    .line 117
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#,#####;-#,#####"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21

    .prologue
    .line 33
    invoke-super/range {p0 .. p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 38
    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lfwi;

    .line 40
    const v3, 0x7f04035d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;->setContentView(I)V

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v18

    .line 42
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 43
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 46
    const v3, 0x7f1010d7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 47
    const v4, 0x7f100dc6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 48
    const v5, 0x7f100df4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 49
    const v6, 0x7f1010da

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 50
    const v7, 0x7f1010db    # 1.9149635E38f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 51
    const v8, 0x7f100df6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 52
    const v9, 0x7f1010dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 53
    const v10, 0x7f1008ed

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 54
    const v11, 0x7f1010df

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 55
    const v12, 0x7f1010e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 56
    const v13, 0x7f1010e1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 57
    const v14, 0x7f1010e2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 58
    const v15, 0x7f1010e3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 61
    const v16, 0x7f1010d9

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 62
    const v17, 0x7f1010dc

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 64
    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v2}, Lfwi;->o()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1

    invoke-virtual {v2}, Lfwi;->o()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    invoke-virtual {v2}, Lfwi;->p()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1

    invoke-virtual {v2}, Lfwi;->p()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 66
    invoke-virtual {v2}, Lfwi;->o()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v2}, Lfwi;->p()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_0
    invoke-static {}, Lnak;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnak;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v2}, Lfwi;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lfwi;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dias"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v2}, Lfwi;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v2}, Lfwi;->f()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v2}, Lfwi;->n()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v2}, Lfwi;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v2}, Lfwi;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v2}, Lfwi;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v2}, Lfwi;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v2}, Lfwi;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "R$"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v2}, Lfwi;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "R$"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v2}, Lfwi;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {v2}, Lfwi;->r()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v2}, Lfwi;->s()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_0
    const v2, 0x7f09085a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 94
    return-void

    .line 68
    :cond_1
    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v19

    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
