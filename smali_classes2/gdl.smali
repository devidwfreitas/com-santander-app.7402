.class public Lgdl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgbk;
.implements Lgdk;


# instance fields
.field private a:Lgce;

.field private b:Lgbj;

.field private c:Lgbc;

.field private d:Landroid/app/Dialog;

.field private e:Landroid/app/Activity;

.field private f:Lgaz;


# direct methods
.method public constructor <init>(Lgce;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lgdl;->a:Lgce;

    .line 44
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lgdl;->e:Landroid/app/Activity;

    .line 45
    new-instance v0, Lgbl;

    iget-object v1, p0, Lgdl;->e:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lgbl;-><init>(Lgdk;Landroid/app/Activity;)V

    iput-object v0, p0, Lgdl;->b:Lgbj;

    .line 46
    return-void
.end method

.method static synthetic a(Lgdl;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lgdl;->d:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic b(Lgdl;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lgdl;->e:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lgdl;->b:Lgbj;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lgdl;->b:Lgbj;

    invoke-interface {v0}, Lgbj;->b()V

    .line 61
    :cond_0
    return-void
.end method

.method public a(Lcom/santander/app/contacorrente/domain/Conta;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 199
    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getValor()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Lnaj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    const-string v1, "R$"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 204
    const/4 v1, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 207
    :cond_0
    invoke-static {p2}, Lnaj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 213
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 217
    iget-object v2, p0, Lgdl;->a:Lgce;

    if-eqz v2, :cond_1

    .line 218
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_2

    .line 219
    iget-object v0, p0, Lgdl;->a:Lgce;

    invoke-interface {v0}, Lgce;->d()V

    .line 226
    :cond_1
    :goto_0
    return-void

    .line 220
    :cond_2
    if-eqz p3, :cond_1

    .line 221
    iget-object v0, p0, Lgdl;->a:Lgce;

    invoke-interface {v0}, Lgce;->a()V

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lgaq;Lcom/santander/app/contacorrente/domain/Conta;Ljava/lang/String;Lgaz;Lgaz;)V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lgdl;->a:Lgce;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p2}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgaq;->f(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgaq;->q(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p4}, Lgaz;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgaq;->k(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p4}, Lgaz;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgaq;->l(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lgdl;->c:Lgbc;

    invoke-virtual {v0}, Lgbc;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgaq;->p(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p4}, Lgaz;->b()Lgba;

    move-result-object v0

    sget-object v1, Lgba;->real:Lgba;

    invoke-virtual {v0, v1}, Lgba;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p4}, Lgaz;->a()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {p5}, Lgaz;->a()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {p4}, Lgaz;->c()Ljava/lang/String;

    .line 98
    invoke-virtual {p5}, Lgaz;->c()Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    invoke-virtual {p1, v2}, Lgaq;->a(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1, v1}, Lgaq;->b(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1, v0}, Lgaq;->I(Ljava/lang/String;)V

    .line 112
    const-string v1, "JPY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {p1, p3}, Lgaq;->A(Ljava/lang/String;)V

    .line 117
    :goto_1
    iget-object v0, p0, Lgdl;->c:Lgbc;

    invoke-virtual {v0}, Lgbc;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgaq;->B(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lgdl;->c:Lgbc;

    invoke-virtual {v0}, Lgbc;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgaq;->D(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lgdl;->c:Lgbc;

    invoke-virtual {v0}, Lgbc;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgaq;->G(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lgdl;->c:Lgbc;

    invoke-virtual {v0}, Lgbc;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgaq;->H(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lgdl;->c:Lgbc;

    invoke-virtual {v0}, Lgbc;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgaq;->C(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lgdl;->c:Lgbc;

    invoke-virtual {v0}, Lgbc;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgaq;->E(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lgdl;->c:Lgbc;

    invoke-virtual {v0}, Lgbc;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgaq;->F(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lgdl;->a:Lgce;

    invoke-interface {v0, p1}, Lgce;->a(Lgaq;)V

    .line 127
    :cond_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p4}, Lgaz;->a()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {p5}, Lgaz;->a()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {p4}, Lgaz;->c()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p5}, Lgaz;->c()Ljava/lang/String;

    goto :goto_0

    .line 115
    :cond_2
    invoke-static {p3}, Lnaj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgaq;->A(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lgas;)V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lgdl;->a:Lgce;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 191
    iget-object v0, p0, Lgdl;->a:Lgce;

    invoke-virtual {p1}, Lgas;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgce;->a(Ljava/lang/String;)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lgdl;->a:Lgce;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lgdl;->a:Lgce;

    const-string v1, "Falha ao comunicar com o sistema !"

    invoke-interface {v0, v1}, Lgce;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lgaz;Lgaz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 68
    invoke-static {p3}, Lnaj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 71
    const-wide/16 v4, 0x0

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_0

    iget-object v0, p0, Lgdl;->a:Lgce;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lgdl;->a:Lgce;

    invoke-interface {v0}, Lgce;->c()V

    .line 75
    :cond_0
    iget-object v0, p0, Lgdl;->b:Lgbj;

    if-eqz v0, :cond_1

    .line 76
    iput-object p1, p0, Lgdl;->f:Lgaz;

    .line 77
    iget-object v0, p0, Lgdl;->b:Lgbj;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lgbj;->a(Lgaz;Lgaz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_1
    return-void
.end method

.method public a(Lgbc;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 131
    iput-object p1, p0, Lgdl;->c:Lgbc;

    .line 133
    iget-object v0, p0, Lgdl;->a:Lgce;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Lgbc;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 135
    invoke-virtual {p1}, Lgbc;->a()Lgbc;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lgbc;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 138
    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2

    .line 139
    invoke-virtual {v0}, Lgbc;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbc;->h(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Lgbc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbc;->c(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lgbc;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbc;->g(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Lgbc;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lnaj;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbc;->f(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Lgbc;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbc;->d(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Lgbc;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbc;->e(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Lgbc;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lnaj;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbc;->i(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lgdl;->a:Lgce;

    invoke-interface {v1, v0}, Lgce;->a(Lgbc;)V

    .line 148
    iget-object v0, p0, Lgdl;->f:Lgaz;

    invoke-virtual {v0}, Lgaz;->b()Lgba;

    move-result-object v0

    sget-object v1, Lgba;->real:Lgba;

    invoke-virtual {v0, v1}, Lgba;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lgdl;->a:Lgce;

    invoke-interface {v0, v6}, Lgce;->a(I)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lgdl;->a:Lgce;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lgce;->a(I)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v0, p0, Lgdl;->a:Lgce;

    iget-object v1, p0, Lgdl;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgce;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {p1}, Lgbc;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lgdl;->e:Landroid/app/Activity;

    invoke-virtual {p1}, Lgbc;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgdl;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lgdm;

    invoke-direct {v3, p0}, Lgdm;-><init>(Lgdl;)V

    invoke-static {v0, v1, v2, v3}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lgdl;->d:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgaz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lgdl;->a:Lgce;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lgdl;->a:Lgce;

    invoke-interface {v0, p1}, Lgce;->b(Ljava/util/List;)V

    .line 186
    :cond_0
    return-void
.end method

.method public b(Lgbc;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lgdl;->a:Lgce;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 173
    iget-object v0, p0, Lgdl;->a:Lgce;

    invoke-virtual {p1}, Lgbc;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgce;->a(Ljava/lang/String;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lgdl;->a:Lgce;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lgdl;->a:Lgce;

    const-string v1, "Falha ao comunicar com o sistema !"

    invoke-interface {v0, v1}, Lgce;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lgdl;->a:Lgce;

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p1}, Lgmy;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lgdl;->a:Lgce;

    invoke-interface {v1, v0}, Lgce;->a(Ljava/util/List;)V

    .line 54
    :cond_0
    return-void
.end method
