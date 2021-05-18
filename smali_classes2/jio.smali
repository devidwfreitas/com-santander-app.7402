.class public Ljio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljez;
.implements Ljin;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:Landroid/app/Activity;

.field private f:Ljgs;

.field private g:Ljfa;

.field private h:Ljdx;

.field private i:Ljdx;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljdx;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Lmiv;


# direct methods
.method public constructor <init>(Ljgs;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Ljio;->f:Ljgs;

    .line 51
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Ljio;->e:Landroid/app/Activity;

    .line 52
    new-instance v0, Ljfa;

    iget-object v1, p0, Ljio;->e:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Ljfa;-><init>(Ljez;Landroid/app/Activity;)V

    iput-object v0, p0, Ljio;->g:Ljfa;

    .line 53
    iget-object v0, p0, Ljio;->f:Ljgs;

    invoke-interface {v0}, Ljgs;->a()V

    .line 54
    iget-object v0, p0, Ljio;->f:Ljgs;

    invoke-interface {v0}, Ljgs;->b()V

    .line 55
    return-void
.end method

.method private a(DD)Z
    .locals 5

    .prologue
    const v4, 0x7f100c4b

    const/4 v0, 0x0

    .line 171
    const-wide/16 v2, 0x0

    cmpl-double v1, p1, v2

    if-lez v1, :cond_1

    .line 172
    cmpl-double v1, p1, p3

    if-ltz v1, :cond_0

    .line 173
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    .line 175
    :cond_0
    iget-object v1, p0, Ljio;->f:Ljgs;

    const-string v2, "Valor inferior ao permitido para aplicar"

    invoke-interface {v1, v2, v4}, Ljgs;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v1, p0, Ljio;->f:Ljgs;

    const-string v2, "Digite um valor"

    invoke-interface {v1, v2, v4}, Ljgs;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private a(DDD)Z
    .locals 5

    .prologue
    const v4, 0x7f100c4b

    const/4 v0, 0x0

    .line 186
    const-wide/16 v2, 0x0

    cmpl-double v1, p1, v2

    if-lez v1, :cond_2

    .line 187
    cmpl-double v1, p1, p5

    if-ltz v1, :cond_1

    .line 188
    cmpg-double v1, p1, p3

    if-gtz v1, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    .line 191
    :cond_0
    iget-object v1, p0, Ljio;->f:Ljgs;

    const-string v2, "Valor superior ao permitido para resgatar"

    invoke-interface {v1, v2, v4}, Ljgs;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object v1, p0, Ljio;->f:Ljgs;

    const-string v2, "Valor inferior ao permitido para resgatar"

    invoke-interface {v1, v2, v4}, Ljgs;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v1, p0, Ljio;->f:Ljgs;

    const-string v2, "Digite um valor"

    invoke-interface {v1, v2, v4}, Ljgs;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    const v3, 0x7f0906a7

    .line 213
    const/4 v0, 0x0

    .line 215
    :try_start_0
    iget-object v1, p0, Ljio;->h:Ljdx;

    invoke-virtual {v1}, Ljdx;->a()Ljdx;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 220
    :goto_0
    sget-object v1, Ljip;->a:[I

    iget-object v2, p0, Ljio;->h:Ljdx;

    invoke-virtual {v2}, Ljdx;->t()Ljdk;

    move-result-object v2

    invoke-virtual {v2}, Ljdk;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 248
    :goto_1
    iget-object v0, p0, Ljio;->f:Ljgs;

    iget-object v1, p0, Ljio;->j:Ljava/util/ArrayList;

    iget-object v2, p0, Ljio;->i:Ljdx;

    invoke-interface {v0, v1, v2}, Ljgs;->a(Ljava/util/ArrayList;Ljdx;)V

    .line 249
    return-void

    .line 216
    :catch_0
    move-exception v1

    .line 217
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :pswitch_0
    iget-object v1, p0, Ljio;->i:Ljdx;

    invoke-virtual {v1}, Ljdx;->Z()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljio;->i:Ljdx;

    invoke-virtual {v2}, Ljdx;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdx;->g(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0}, Ljdx;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdx;->u(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Ljio;->i:Ljdx;

    invoke-virtual {v1}, Ljdx;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdx;->G(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Ljio;->i:Ljdx;

    invoke-virtual {v1}, Ljdx;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdx;->s(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Ljio;->i:Ljdx;

    invoke-virtual {v1}, Ljdx;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdx;->c(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Ljio;->i:Ljdx;

    invoke-virtual {v1}, Ljdx;->S()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdx;->A(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Ljio;->i:Ljdx;

    invoke-virtual {v1}, Ljdx;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdx;->b(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Ljio;->f:Ljgs;

    invoke-interface {v1, v0}, Ljgs;->b(Ljdx;)V

    goto :goto_1

    .line 233
    :pswitch_1
    iget-object v1, p0, Ljio;->i:Ljdx;

    invoke-virtual {v1}, Ljdx;->g()Ljdu;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljio;->i:Ljdx;

    invoke-virtual {v1}, Ljdx;->g()Ljdu;

    move-result-object v1

    invoke-virtual {v1}, Ljdu;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Ljio;->h:Ljdx;

    invoke-virtual {v1}, Ljdx;->v()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NAO DISPONIVEL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljio;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljdx;->l(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Ljio;->h:Ljdx;

    invoke-virtual {v1}, Ljdx;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljio;->k:Ljava/lang/String;

    .line 236
    iget-object v1, p0, Ljio;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090634

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdx;->a(Ljava/lang/String;)V

    .line 242
    :goto_3
    iget-object v1, p0, Ljio;->h:Ljdx;

    invoke-virtual {v1}, Ljdx;->N()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdx;->v(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Ljio;->h:Ljdx;

    invoke-virtual {v1}, Ljdx;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdx;->s(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Ljio;->i:Ljdx;

    invoke-virtual {v1}, Ljdx;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdx;->b(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Ljio;->f:Ljgs;

    invoke-interface {v1, v0}, Ljgs;->c(Ljdx;)V

    goto/16 :goto_1

    .line 234
    :cond_0
    iget-object v1, p0, Ljio;->h:Ljdx;

    invoke-virtual {v1}, Ljdx;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 238
    :cond_1
    iget-object v1, p0, Ljio;->h:Ljdx;

    invoke-virtual {v1}, Ljdx;->u()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NAO DISPONIVEL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljio;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Ljdx;->l(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Ljio;->h:Ljdx;

    invoke-virtual {v1}, Ljdx;->u()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljio;->k:Ljava/lang/String;

    .line 240
    iget-object v1, p0, Ljio;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090633

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdx;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 238
    :cond_2
    iget-object v1, p0, Ljio;->h:Ljdx;

    invoke-virtual {v1}, Ljdx;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 220
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Ljio;->f:Ljgs;

    const-string v1, ""

    const v2, 0x7f100c4b

    invoke-interface {v0, v1, v2}, Ljgs;->a(Ljava/lang/String;I)V

    .line 150
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 131
    :try_start_0
    invoke-static {p1}, Lnaj;->c(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Ljio;->b:F

    .line 132
    iget-object v0, p0, Ljio;->i:Ljdx;

    invoke-virtual {v0}, Ljdx;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->c(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Ljio;->c:F

    .line 133
    iget-object v0, p0, Ljio;->i:Ljdx;

    invoke-virtual {v0}, Ljdx;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->c(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Ljio;->d:F

    .line 134
    iget v0, p0, Ljio;->b:F

    float-to-double v2, v0

    iget v0, p0, Ljio;->c:F

    float-to-double v4, v0

    iget v0, p0, Ljio;->d:F

    float-to-double v6, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Ljio;->a(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Ljio;->f:Ljgs;

    invoke-interface {v0}, Ljgs;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-static {p1}, Lnaj;->c(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Ljio;->b:F

    .line 139
    const-string v0, "0,00"

    invoke-static {v0}, Lnaj;->c(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Ljio;->c:F

    .line 140
    iget-object v0, p0, Ljio;->i:Ljdx;

    invoke-virtual {v0}, Ljdx;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->c(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Ljio;->d:F

    .line 141
    iget v0, p0, Ljio;->b:F

    float-to-double v2, v0

    iget v0, p0, Ljio;->c:F

    float-to-double v4, v0

    iget v0, p0, Ljio;->d:F

    float-to-double v6, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Ljio;->a(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Ljio;->f:Ljgs;

    invoke-interface {v0}, Ljgs;->d()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/santander/app/contacorrente/domain/Conta;)V
    .locals 4

    .prologue
    .line 112
    :try_start_0
    invoke-static {p1}, Lnaj;->c(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Ljio;->a:F

    .line 113
    iget v0, p0, Ljio;->a:F

    float-to-double v0, v0

    iget-object v2, p0, Ljio;->k:Ljava/lang/String;

    invoke-static {v2}, Lnaj;->c(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Ljio;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Ljio;->h:Ljdx;

    invoke-virtual {v0}, Ljdx;->t()Ljdk;

    move-result-object v0

    sget-object v1, Ljdk;->APLICAR:Ljdk;

    if-ne v0, v1, :cond_1

    .line 115
    invoke-virtual {p0, p1, p2}, Ljio;->b(Ljava/lang/String;Lcom/santander/app/contacorrente/domain/Conta;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Ljio;->f:Ljgs;

    invoke-interface {v0}, Ljgs;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-static {p1}, Lnaj;->c(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Ljio;->a:F

    .line 121
    iget v0, p0, Ljio;->a:F

    float-to-double v0, v0

    const-string v2, "0,00"

    invoke-static {v2}, Lnaj;->c(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Ljio;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Ljio;->f:Ljgs;

    invoke-interface {v0}, Ljgs;->d()V

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljdx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdx;

    iput-object v0, p0, Ljio;->i:Ljdx;

    .line 207
    iput-object p1, p0, Ljio;->j:Ljava/util/ArrayList;

    .line 209
    invoke-direct {p0}, Ljio;->b()V

    .line 210
    return-void
.end method

.method public a(Ljava/util/List;)V
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
    .line 59
    invoke-static {p1}, Lgmy;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 60
    iget-object v1, p0, Ljio;->f:Ljgs;

    invoke-interface {v1, v0}, Ljgs;->a(Ljava/util/List;)V

    .line 61
    return-void
.end method

.method public a(Ljdm;)V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public a(Ljdx;)V
    .locals 2

    .prologue
    .line 81
    :try_start_0
    invoke-virtual {p1}, Ljdx;->a()Ljdx;

    move-result-object v0

    iput-object v0, p0, Ljio;->h:Ljdx;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    sget-object v0, Ljip;->a:[I

    iget-object v1, p0, Ljio;->h:Ljdx;

    invoke-virtual {v1}, Ljdx;->t()Ljdk;

    move-result-object v1

    invoke-virtual {v1}, Ljdk;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_1
    :pswitch_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :pswitch_1
    iget-object v0, p0, Ljio;->h:Ljdx;

    invoke-virtual {v0}, Ljdx;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljio;->k:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Ljio;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090634

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljdx;->a(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Ljio;->h:Ljdx;

    invoke-virtual {v0}, Ljdx;->v()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NAO DISPONIVEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljio;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0906a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0}, Ljdx;->l(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Ljio;->h:Ljdx;

    invoke-virtual {v0}, Ljdx;->N()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljdx;->v(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Ljio;->h:Ljdx;

    invoke-virtual {v0}, Ljdx;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljdx;->s(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Ljio;->h:Ljdx;

    invoke-virtual {v0}, Ljdx;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljdx;->f(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Ljio;->f:Ljgs;

    invoke-interface {v0, p1}, Ljgs;->a(Ljdx;)V

    goto :goto_1

    .line 89
    :cond_0
    iget-object v0, p0, Ljio;->h:Ljdx;

    invoke-virtual {v0}, Ljdx;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 104
    :pswitch_2
    iget-object v0, p0, Ljio;->g:Ljfa;

    iget-object v1, p0, Ljio;->h:Ljdx;

    invoke-virtual {v0, v1}, Ljfa;->a(Ljdx;)V

    goto :goto_1

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lmiw;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Ljio;->f:Ljgs;

    invoke-interface {v0}, Ljgs;->d()V

    .line 66
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/santander/app/contacorrente/domain/Conta;)V
    .locals 4

    .prologue
    .line 161
    new-instance v0, Lmiv;

    invoke-direct {v0}, Lmiv;-><init>()V

    .line 162
    invoke-static {p1}, Lnaj;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiv;->d(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Ljio;->h:Ljdx;

    invoke-virtual {v1}, Ljdx;->y()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Ljio;->h:Ljdx;

    invoke-virtual {v3}, Ljdx;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiv;->b(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiv;->c(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiv;->setAgencia(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Ljio;->g:Ljfa;

    invoke-virtual {v1, v0}, Ljfa;->a(Lmiv;)V

    .line 167
    return-void
.end method

.method public b(Ljdx;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Ljio;->i:Ljdx;

    .line 155
    invoke-direct {p0}, Ljio;->b()V

    .line 156
    return-void
.end method

.method public b(Lmiw;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Ljio;->f:Ljgs;

    const v1, 0x7f090362

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lase;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljgs;->a(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public c(Lmiw;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Ljio;->f:Ljgs;

    invoke-interface {v0}, Ljgs;->e()V

    .line 76
    return-void
.end method
