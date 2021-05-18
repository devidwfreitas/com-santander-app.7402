.class public Lcom/santander/app/InvestimentosFundoDetalleActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field public a:Landroid/app/Dialog;

.field private final b:Ljava/lang/String;

.field private c:Landroid/app/Activity;

.field private d:Lftg;

.field private e:Lfip;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 34
    const-string v0, "InvestimentosFundoDetalleActivity"

    iput-object v0, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->b:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->a:Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/InvestimentosFundoDetalleActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->c:Landroid/app/Activity;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/InvestimentosFundoDetalleActivity;Lftg;)Lftg;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->d:Lftg;

    return-object p1
.end method

.method private a()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 89
    const v0, 0x7f100dad

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    iget-object v1, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->d:Lftg;

    invoke-virtual {v1}, Lftg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v0, 0x7f100dae

    invoke-virtual {p0, v0}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    const-string v1, "%.7f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->d:Lftg;

    invoke-virtual {v4}, Lftg;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const v6, 0x4b189680    # 1.0E7f

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v0, 0x7f100daf

    invoke-virtual {p0, v0}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    iget-object v1, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->d:Lftg;

    invoke-virtual {v1}, Lftg;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v0, 0x7f100db0

    invoke-virtual {p0, v0}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    const-string v1, "%.7f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->d:Lftg;

    invoke-virtual {v4}, Lftg;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 97
    const-string v2, "\\."

    const-string v3, ","

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v0, 0x7f100db1

    invoke-virtual {p0, v0}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    iget-object v1, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->d:Lftg;

    invoke-virtual {v1}, Lftg;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v0, 0x7f100db2

    invoke-virtual {p0, v0}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 101
    iget-object v1, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->d:Lftg;

    invoke-virtual {v1}, Lftg;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const v0, 0x7f100db3

    invoke-virtual {p0, v0}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    iget-object v1, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->d:Lftg;

    invoke-virtual {v1}, Lftg;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v0, 0x7f100db4

    invoke-virtual {p0, v0}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    iget-object v1, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->d:Lftg;

    invoke-virtual {v1}, Lftg;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const v0, 0x7f100db5

    invoke-virtual {p0, v0}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move v6, v5

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->d:Lftg;

    invoke-virtual {v1}, Lftg;->k()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v6, v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->d:Lftg;

    invoke-virtual {v1}, Lftg;->k()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfti;

    .line 113
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 114
    const v3, 0x7f04028d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 116
    const v2, 0x7f100dac

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TOTAL DA CONTA FUNDO: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lfti;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    const v2, 0x7f100daf

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 120
    invoke-virtual {v1}, Lfti;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const v2, 0x7f100db0

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 122
    const-string v4, "%.7f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Lfti;->c()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 123
    const-string v7, "\\."

    const-string v8, ","

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const v2, 0x7f100db1

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 125
    invoke-virtual {v1}, Lfti;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const v2, 0x7f100db2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 127
    invoke-virtual {v1}, Lfti;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const v2, 0x7f100db3

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 129
    invoke-virtual {v1}, Lfti;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const v2, 0x7f100db4

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 131
    invoke-virtual {v1}, Lfti;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v4, v5

    .line 135
    :goto_1
    invoke-virtual {v1}, Lfti;->i()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v4, v2, :cond_0

    .line 137
    invoke-virtual {v1}, Lfti;->i()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfth;

    .line 139
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 140
    const v7, 0x7f04028c

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 142
    const v3, 0x7f100dac

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 143
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DATA DA APLICA\u00c7\u00c3O: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lfth;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const v3, 0x7f100daf

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 146
    invoke-virtual {v2}, Lfth;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const v3, 0x7f100db0

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 148
    const-string v8, "%.7f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v2}, Lfth;->c()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    const v12, 0x4b189680    # 1.0E7f

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 149
    const-string v9, "\\."

    const-string v10, ","

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const v3, 0x7f100db1

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 151
    invoke-virtual {v2}, Lfth;->e()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    const v3, 0x7f100db2

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 153
    invoke-virtual {v2}, Lfth;->d()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const v3, 0x7f100db3

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 155
    invoke-virtual {v2}, Lfth;->g()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const v3, 0x7f100db4

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 157
    invoke-virtual {v2}, Lfth;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_1

    .line 109
    :cond_0
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 169
    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/InvestimentosFundoDetalleActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/InvestimentosFundoDetalleActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/InvestimentosFundoDetalleActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/InvestimentosFundoDetalleActivity;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->a()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 49
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f04028b

    invoke-virtual {p0, v0}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    const-string v1, "agencia"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->f:Ljava/lang/String;

    .line 55
    const-string v1, "conta"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->g:Ljava/lang/String;

    .line 56
    const-string v1, "codigo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->w:Ljava/lang/String;

    .line 57
    const-string v1, "nombre"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    const-string v1, "fecha"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    iput-object p0, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->c:Landroid/app/Activity;

    .line 68
    invoke-virtual {p0}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 70
    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 72
    const v1, 0x7f09085a

    invoke-virtual {p0, v1}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 74
    const v0, 0x7f100daa

    invoke-virtual {p0, v0}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    const v1, 0x7f100dab

    invoke-virtual {p0, v1}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 77
    iget-object v4, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->g:Ljava/lang/String;

    invoke-static {v4, v5}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v0, 0x7f100dac

    invoke-virtual {p0, v0}, Lcom/santander/app/InvestimentosFundoDetalleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TOTAL FUNDO: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    new-instance v0, Lfip;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfip;-><init>(Lcom/santander/app/InvestimentosFundoDetalleActivity;Lfio;)V

    iput-object v0, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->e:Lfip;

    .line 84
    iget-object v0, p0, Lcom/santander/app/InvestimentosFundoDetalleActivity;->e:Lfip;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfip;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    return-void
.end method
