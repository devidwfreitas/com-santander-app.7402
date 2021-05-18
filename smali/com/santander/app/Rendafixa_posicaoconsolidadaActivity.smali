.class public Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/app/Activity;

.field private c:Lfwb;

.field private d:Landroid/widget/ProgressBar;

.field private e:Lfnf;

.field private f:Landroid/app/Dialog;

.field private g:Z

.field private w:Lnfe;

.field private x:Lfng;

.field private y:Lnfe;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 53
    const-string v0, "Rendafixa_posicaoconsolidadaActivity"

    iput-object v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->a:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->e:Lfnf;

    .line 63
    iput-object v1, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->f:Landroid/app/Dialog;

    .line 67
    iput-object v1, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->w:Lnfe;

    .line 71
    iput-object v1, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->y:Lnfe;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->f:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;Lfwb;)Lfwb;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    return-object p1
.end method

.method private a(Landroid/view/View;Lfwb;)V
    .locals 17

    .prologue
    .line 171
    const v1, 0x7f100db5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 173
    invoke-virtual/range {p2 .. p2}, Lfwb;->f()Ljava/util/Vector;

    move-result-object v8

    .line 175
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 177
    new-instance v2, Lfwb;

    invoke-direct {v2}, Lfwb;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    .line 179
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 180
    const/4 v2, 0x0

    move v5, v2

    :goto_0
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v5, v2, :cond_a

    .line 181
    invoke-virtual {v8, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfwj;

    .line 183
    const/4 v3, 0x0

    move v6, v3

    :goto_1
    invoke-virtual {v2}, Lfwj;->g()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v6, v3, :cond_1

    .line 184
    invoke-virtual {v2}, Lfwj;->g()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfwk;

    .line 185
    const/4 v4, 0x0

    move v7, v4

    :goto_2
    invoke-virtual {v3}, Lfwk;->g()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v7, v4, :cond_0

    .line 186
    invoke-virtual {v3}, Lfwk;->g()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfwi;

    .line 190
    invoke-virtual {v2}, Lfwj;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lfwi;->o(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v2}, Lfwj;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lfwi;->p(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v14, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_2

    .line 183
    :cond_0
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_1

    .line 196
    :cond_1
    invoke-virtual {v2}, Lfwj;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    invoke-virtual {v3}, Lfwb;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    invoke-virtual {v2}, Lfwj;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfwb;->a(Ljava/lang/String;)V

    .line 205
    :cond_2
    :goto_3
    invoke-virtual {v2}, Lfwj;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    invoke-virtual {v3}, Lfwb;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    invoke-virtual {v2}, Lfwj;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfwb;->b(Ljava/lang/String;)V

    .line 215
    :cond_3
    :goto_4
    invoke-virtual {v2}, Lfwj;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    invoke-virtual {v3}, Lfwb;->d()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    invoke-virtual {v2}, Lfwj;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfwb;->d(Ljava/lang/String;)V

    .line 225
    :cond_4
    :goto_5
    invoke-virtual {v2}, Lfwj;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    invoke-virtual {v3}, Lfwb;->c()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    invoke-virtual {v2}, Lfwj;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lfwb;->c(Ljava/lang/String;)V

    .line 180
    :cond_5
    :goto_6
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_0

    .line 200
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    invoke-virtual {v3}, Lfwb;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 201
    invoke-virtual {v2}, Lfwj;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 202
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v3, v4

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lfwb;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 209
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    invoke-virtual {v3}, Lfwb;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 210
    invoke-virtual {v2}, Lfwj;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 211
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v3, v4

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lfwb;->b(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 219
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    invoke-virtual {v3}, Lfwb;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 220
    invoke-virtual {v2}, Lfwj;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 221
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v3, v4

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lfwb;->d(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 229
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    invoke-virtual {v3}, Lfwb;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 230
    invoke-virtual {v2}, Lfwj;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v2, v3

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lfwb;->c(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 238
    :cond_a
    const/4 v2, 0x0

    move v12, v2

    :goto_7
    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v12, v2, :cond_f

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040293

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 241
    invoke-virtual {v14, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfwi;

    .line 243
    const v3, 0x7f100dca

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 244
    const v4, 0x7f100dcb

    invoke-virtual {v15, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 245
    const v5, 0x7f100dcd

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 246
    const v6, 0x7f100dce

    invoke-virtual {v15, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 247
    const v7, 0x7f100dcf

    invoke-virtual {v15, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 248
    const v8, 0x7f100dd0

    invoke-virtual {v15, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 249
    const v9, 0x7f100dd1

    invoke-virtual {v15, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 250
    const v10, 0x7f100dd2

    invoke-virtual {v15, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 251
    const v11, 0x7f100dc8

    invoke-virtual {v15, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 253
    const-string v13, ""

    .line 255
    invoke-virtual {v2}, Lfwi;->e()Ljava/lang/String;

    move-result-object v13

    const-string v16, "CDB RECOMP MAIS"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_b

    invoke-virtual {v2}, Lfwi;->e()Ljava/lang/String;

    move-result-object v13

    const-string v16, "CDB PROGRESSIVO 100M"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 256
    :cond_b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lfwi;->e()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " (Antigo CDB Recompensa Mais)"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 263
    :goto_8
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual {v2}, Lfwi;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {v2}, Lfwi;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {v2}, Lfwi;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-virtual {v2}, Lfwi;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-virtual {v2}, Lfwi;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {v2}, Lfwi;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {v2}, Lfwi;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {v2}, Lfwi;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    const v3, 0x7f100d9a

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 274
    new-instance v4, Lfna;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lfna;-><init>(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    const v3, 0x7f10006e

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 302
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 304
    new-instance v2, Lfnb;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lfnb;-><init>(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_7

    .line 257
    :cond_c
    invoke-virtual {v2}, Lfwi;->e()Ljava/lang/String;

    move-result-object v13

    const-string v16, "CDB RECOMPENSA"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    invoke-virtual {v2}, Lfwi;->e()Ljava/lang/String;

    move-result-object v13

    const-string v16, "CDB PROGRESSIVO 10M"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 258
    :cond_d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lfwi;->e()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " (Antigo CDB Recompensa)"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_8

    .line 260
    :cond_e
    invoke-virtual {v2}, Lfwi;->e()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_8

    .line 318
    :cond_f
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;Z)Z
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->g:Z

    return p1
.end method

.method public static synthetic b(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c()V

    return-void
.end method

.method public static synthetic c(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private c()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v8, 0x0

    .line 115
    const v0, 0x7f100dc3

    invoke-virtual {p0, v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 117
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v1

    invoke-virtual {v1}, Lhau;->j()Lfwb;

    move-result-object v9

    move v7, v8

    .line 120
    :goto_0
    if-ge v7, v13, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040291

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 123
    const v1, 0x7f100d2d

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 125
    new-instance v2, Lfmy;

    invoke-direct {v2, p0}, Lfmy;-><init>(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v2, 0x7f100dc4

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 133
    new-instance v3, Lfmz;

    invoke-direct {v3, p0}, Lfmz;-><init>(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-static {}, Lmzr;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    invoke-virtual {v1, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 142
    invoke-virtual {v2, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 148
    :goto_1
    const v1, 0x7f100daa

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 149
    const v2, 0x7f100dab

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 151
    const v3, 0x7f100dc5

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 152
    const v4, 0x7f100dc7

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 153
    const v5, 0x7f100db4

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 154
    const v6, 0x7f100dc6

    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 156
    invoke-direct {p0, v10, v9}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->a(Landroid/view/View;Lfwb;)V

    .line 158
    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-static {}, Lnak;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnak;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v1, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    invoke-virtual {v1}, Lfwb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    invoke-virtual {v1}, Lfwb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    invoke-virtual {v1}, Lfwb;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    invoke-virtual {v1}, Lfwb;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_0

    .line 144
    :cond_0
    invoke-virtual {v1, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 145
    invoke-virtual {v2, v13}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 168
    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Lfwb;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    return-object v0
.end method

.method private d()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 551
    invoke-virtual {p0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0905e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 552
    invoke-virtual {p0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040280

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 553
    iget-object v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    invoke-virtual {v0}, Lfwb;->h()Lftn;

    move-result-object v7

    .line 555
    const v0, 0x7f100d70

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 556
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    invoke-virtual {v7}, Lftn;->a()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v4, v1, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040287

    invoke-virtual {v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 558
    const v2, 0x7f100d97

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 560
    invoke-virtual {v7}, Lftn;->a()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lftk;

    invoke-virtual {v3}, Lftk;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    invoke-virtual {v7}, Lftn;->a()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 565
    new-instance v2, Lfnc;

    invoke-direct {v2, p0, v7, v4}, Lfnc;-><init>(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;Lftn;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 556
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 580
    :cond_0
    new-instance v0, Lnfe;

    invoke-direct {v0, p0, v5, v6}, Lnfe;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V

    iput-object v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->y:Lnfe;

    .line 581
    return-void
.end method

.method public static synthetic e(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->f:Landroid/app/Dialog;

    return-object v0
.end method

.method private e()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 603
    invoke-virtual {p0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0905e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 604
    invoke-virtual {p0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040280

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 605
    iget-object v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    invoke-virtual {v0}, Lfwb;->g()Lftm;

    move-result-object v0

    invoke-virtual {v0}, Lftm;->a()Ljava/util/Vector;

    move-result-object v7

    .line 607
    const v0, 0x7f100d70

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 608
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v4, v1, :cond_1

    .line 609
    invoke-virtual {p0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040287

    invoke-virtual {v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 610
    const v2, 0x7f100d97

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 612
    invoke-virtual {v7, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lftq;

    invoke-virtual {v3}, Lftq;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    invoke-virtual {v7, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 617
    iget-object v2, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->v:Lmip;

    invoke-interface {v2}, Lmip;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 618
    const v2, 0x7f10053b

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 619
    const v3, 0x7f020068

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 622
    :cond_0
    new-instance v2, Lfnd;

    invoke-direct {v2, p0}, Lfnd;-><init>(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 608
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 635
    :cond_1
    new-instance v0, Lnfe;

    invoke-direct {v0, p0, v5, v6}, Lnfe;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V

    iput-object v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->w:Lnfe;

    .line 636
    return-void
.end method

.method public static synthetic f(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->g:Z

    return v0
.end method

.method public static synthetic g(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->e()V

    return-void
.end method

.method public static synthetic h(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Lnfe;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->w:Lnfe;

    return-object v0
.end method

.method public static synthetic i(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Lnfe;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->y:Lnfe;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 100
    const v0, 0x7f040292

    invoke-virtual {p0, v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->setContentView(I)V

    .line 102
    const v0, 0x7f100815

    invoke-virtual {p0, v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->d:Landroid/widget/ProgressBar;

    .line 104
    new-instance v0, Lfne;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfne;-><init>(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;Lfmy;)V

    .line 105
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfne;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 106
    return-void
.end method

.method public a(Lftq;)V
    .locals 3

    .prologue
    .line 584
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 585
    const-string v1, "listaProdutos"

    iget-object v2, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    invoke-virtual {v2}, Lfwb;->g()Lftm;

    move-result-object v2

    invoke-virtual {v2}, Lftm;->a()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 586
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 587
    invoke-virtual {p0, v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 588
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 591
    const-string v0, "Rendafixa_Aplicar"

    const-string v1, "Investimentos"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v0, "Investimentos_MeusInvestimentos_Acao"

    const-string v1, "Produto"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v0, "Investimentos_MeusInvestimentos"

    const-string v1, "CDB/LCI"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    invoke-virtual {v0}, Lfwb;->g()Lftm;

    move-result-object v0

    invoke-virtual {v0}, Lftm;->a()Ljava/util/Vector;

    move-result-object v0

    .line 596
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 597
    const-string v2, "listaProdutos"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 598
    const-string v0, "cdb"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    invoke-virtual {p0, v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 600
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->d()V

    .line 538
    iget-object v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->y:Lnfe;

    invoke-virtual {v0}, Lnfe;->a()V

    .line 539
    return-void
.end method

.method public goAplicar(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 379
    const-string v0, "Rendafixa_Aplicar"

    const-string v1, "Investimentos"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v0, "Investimentos_RendaFixa_Acao"

    const-string v1, "Aplicar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    new-instance v0, Lfnf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfnf;-><init>(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;Lfmy;)V

    iput-object v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->e:Lfnf;

    .line 383
    iget-object v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->e:Lfnf;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfnf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 385
    return-void
.end method

.method public goResgatar(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 388
    const-string v0, "Rendafixa_Resgatar"

    const-string v1, "Investimentos"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v0, "Investimentos_RendaFixa_Acao"

    const-string v1, "Resgatar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    new-instance v0, Lfng;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfng;-><init>(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;Lfmy;)V

    iput-object v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->x:Lfng;

    .line 392
    iget-object v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->x:Lfng;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfng;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 394
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 82
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 84
    const v1, 0x7f090869

    invoke-virtual {p0, v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 86
    iput-object p0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->b:Landroid/app/Activity;

    .line 88
    invoke-virtual {p0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "exibe_lista"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->g:Z

    .line 90
    iget-boolean v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->g:Z

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Lfnf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfnf;-><init>(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;Lfmy;)V

    iput-object v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->e:Lfnf;

    .line 92
    iget-object v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->e:Lfnf;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfnf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->a()V

    goto :goto_0
.end method

.method public openAplicacaoRendaFixa(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 640
    iget-object v0, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->w:Lnfe;

    invoke-virtual {v0}, Lnfe;->b()V

    .line 641
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    .line 642
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 643
    const-string v2, "listaProdutos"

    iget-object v3, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    invoke-virtual {v3}, Lfwb;->g()Lftm;

    move-result-object v3

    invoke-virtual {v3}, Lftm;->a()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 644
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 645
    invoke-virtual {p0, v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 646
    return-void
.end method

.method public openRendafixaDetahle(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method public openRendafixaResgate(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 543
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/santander/app/RendaFixaResgateActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 544
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftk;

    .line 545
    const-string v2, "itemListarProductosResgateRendaFixaBean"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 546
    const-string v0, "listaProdutos"

    iget-object v2, p0, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->c:Lfwb;

    invoke-virtual {v2}, Lfwb;->h()Lftn;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 547
    invoke-virtual {p0, v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 548
    return-void
.end method
