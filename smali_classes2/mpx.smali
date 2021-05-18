.class public Lmpx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmmu;
.implements Lmpw;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lmok;

.field private c:Lmmt;

.field private d:Lcom/santander/app/contacorrente/domain/Conta;

.field private e:Lmlo;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lmok;Lcom/santander/app/contacorrente/domain/Conta;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lmpx;->a:Landroid/app/Activity;

    .line 40
    iput-object p2, p0, Lmpx;->b:Lmok;

    .line 41
    new-instance v0, Lmmv;

    iget-object v1, p0, Lmpx;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lmmv;-><init>(Landroid/app/Activity;Lmmu;)V

    iput-object v0, p0, Lmpx;->c:Lmmt;

    .line 42
    iput-object p3, p0, Lmpx;->d:Lcom/santander/app/contacorrente/domain/Conta;

    .line 44
    invoke-direct {p0}, Lmpx;->b()V

    .line 45
    invoke-interface {p2}, Lmok;->d()V

    .line 46
    invoke-interface {p2}, Lmok;->a()V

    .line 47
    invoke-interface {p2}, Lmok;->b()V

    .line 48
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lmpx;->c:Lmmt;

    iget-object v1, p0, Lmpx;->d:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-interface {v0, v1}, Lmmt;->a(Lcom/santander/app/contacorrente/domain/Conta;)V

    .line 53
    return-void
.end method

.method private c(Lmlo;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1}, Lmlo;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-direct {p0, p1}, Lmpx;->e(Lmlo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lmpx;->b:Lmok;

    iget-object v2, p0, Lmpx;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0907a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmok;->a(Ljava/lang/String;)V

    .line 88
    :goto_0
    return v0

    .line 82
    :cond_0
    invoke-direct {p0, p1}, Lmpx;->f(Lmlo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    iget-object v1, p0, Lmpx;->b:Lmok;

    iget-object v2, p0, Lmpx;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09079f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmok;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Lmlo;)Z
    .locals 4

    .prologue
    .line 93
    const-string v0, "TED"

    invoke-virtual {p1}, Lmlo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmlo;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lmlo;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 96
    const/16 v2, 0xb

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 97
    const/16 v2, 0xc

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 99
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e(Lmlo;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x7

    .line 106
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 109
    :try_start_0
    invoke-virtual {p1}, Lmlo;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 110
    const/4 v2, 0x7

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v2, v6, :cond_0

    const/4 v2, 0x7

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v0, :cond_1

    :cond_0
    move v0, v1

    .line 116
    :cond_1
    :goto_0
    return v0

    .line 113
    :catch_0
    move-exception v0

    move v0, v1

    .line 114
    goto :goto_0
.end method

.method private f(Lmlo;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 120
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 123
    :try_start_0
    invoke-virtual {p1}, Lmlo;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 124
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 125
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 126
    const-wide v6, 0x757b12c00L

    add-long/2addr v4, v6

    .line 127
    invoke-virtual {v2, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 129
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public a(Lmkx;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lmpx;->b:Lmok;

    invoke-interface {v0, p1}, Lmok;->a(Lmkx;)V

    .line 141
    return-void
.end method

.method public a(Lmlo;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lmpx;->c(Lmlo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p1}, Lmlo;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lmpx;->b:Lmok;

    invoke-interface {v0}, Lmok;->e()V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lmpx;->c:Lmmt;

    invoke-interface {v0, p1}, Lmmt;->a(Lmlo;)V

    goto :goto_0
.end method

.method public a(Lmlp;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lmpx;->b:Lmok;

    invoke-interface {v0}, Lmok;->f()Lmlo;

    move-result-object v0

    invoke-virtual {p1}, Lmlp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlo;->g(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lmpx;->b:Lmok;

    invoke-interface {v0}, Lmok;->f()Lmlo;

    move-result-object v0

    invoke-virtual {p1}, Lmlp;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlo;->k(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lmpx;->b:Lmok;

    invoke-interface {v0}, Lmok;->f()Lmlo;

    move-result-object v0

    invoke-virtual {v0}, Lmlo;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lmpx;->b:Lmok;

    invoke-interface {v0}, Lmok;->f()Lmlo;

    move-result-object v0

    invoke-virtual {p1}, Lmlp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlo;->h(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lmpx;->b:Lmok;

    invoke-interface {v0}, Lmok;->f()Lmlo;

    move-result-object v0

    invoke-virtual {p1}, Lmlp;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlo;->i(Ljava/lang/String;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lmpx;->b:Lmok;

    invoke-interface {v0}, Lmok;->f()Lmlo;

    move-result-object v0

    invoke-virtual {v0}, Lmlo;->c()Lmkw;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lmpx;->b:Lmok;

    invoke-interface {v0}, Lmok;->f()Lmlo;

    move-result-object v0

    invoke-virtual {v0}, Lmlo;->c()Lmkw;

    move-result-object v0

    invoke-virtual {p1}, Lmlp;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmkw;->h(Ljava/lang/String;)V

    .line 162
    :cond_1
    iget-object v0, p0, Lmpx;->b:Lmok;

    invoke-interface {v0}, Lmok;->f()Lmlo;

    move-result-object v0

    invoke-virtual {p1}, Lmlp;->g()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlo;->a(Ljava/util/HashMap;)V

    .line 164
    iget-object v0, p0, Lmpx;->b:Lmok;

    invoke-interface {v0}, Lmok;->f()Lmlo;

    move-result-object v0

    invoke-virtual {p1}, Lmlp;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlo;->l(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lmpx;->b:Lmok;

    invoke-interface {v0}, Lmok;->g()V

    .line 167
    return-void
.end method

.method public b(Lmlo;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lmpx;->c:Lmmt;

    invoke-interface {v0, p1}, Lmmt;->a(Lmlo;)V

    .line 71
    return-void
.end method

.method public b(Lmlp;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 171
    if-nez p1, :cond_0

    .line 172
    const-string v0, "Erro_Connection_Jab_Response_Html_Ou_Vazio"

    const-string v1, "FormaTransferenciaPresenterImpl.onErrorValidarTransferencia"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lmpx;->a:Landroid/app/Activity;

    const-string v1, "Aten\u00e7\u00e3o"

    const-string v2, "Desculpe, estamos resolvendo e voc\u00ea j\u00e1 vai conseguir usar seu App. Tente novamente mais tarde.(000053)"

    invoke-static {v0, v1, v2, v3}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Dialog;

    .line 183
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p1}, Lmlp;->getMensagemErro()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {p1}, Lmlp;->getMensagemErro()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "incorrect authentication"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    const-string v0, "N\u00e3o foi poss\u00edvel efetuar a transa\u00e7\u00e3o. Por favor, tente novamente mais tarde."

    invoke-static {v0, v3}, Lmxn;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lmpx;->b:Lmok;

    invoke-virtual {p1}, Lmlp;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmok;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Lmpx;->b:Lmok;

    const-string v1, "Erro ao efetuar Transferencias!"

    invoke-interface {v0, v1}, Lmok;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
