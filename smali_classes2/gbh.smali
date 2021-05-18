.class public Lgbh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgbf;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lgds;

.field private c:Lmip;

.field private d:Lgbg;


# direct methods
.method public constructor <init>(Lgbg;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lgbh;->d:Lgbg;

    .line 42
    new-instance v0, Lgdt;

    invoke-direct {v0}, Lgdt;-><init>()V

    iput-object v0, p0, Lgbh;->b:Lgds;

    .line 43
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lgbh;->c:Lmip;

    .line 44
    iput-object p2, p0, Lgbh;->a:Landroid/app/Activity;

    .line 45
    return-void
.end method

.method static synthetic a(Lgbh;)Lgbg;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lgbh;->d:Lgbg;

    return-object v0
.end method

.method private a()Lgvb;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lgbh;->a:Landroid/app/Activity;

    const v1, 0x7f09043f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgbh;->a(Ljava/lang/String;)Lgvb;

    move-result-object v0

    return-object v0
.end method

.method private a(Lgar;)Lgvb;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 68
    new-instance v1, Lgvb;

    invoke-direct {v1}, Lgvb;-><init>()V

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {p1}, Lgar;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgku;

    .line 72
    new-instance v4, Lgky;

    invoke-virtual {v0}, Lgku;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lgku;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Lgku;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x1e

    if-le v0, v5, :cond_0

    .line 74
    invoke-virtual {v4, v7}, Lgky;->a(Z)V

    .line 75
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v1, v2}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 79
    iget-object v0, p0, Lgbh;->a:Landroid/app/Activity;

    const v2, 0x7f090a7c

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->c(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lgbh;->a:Landroid/app/Activity;

    const v2, 0x7f090201

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lgar;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->m(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lgar;->getDataHoraTransacao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->f(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lgar;->getAutenticacao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->e(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lgar;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->a(Ljava/lang/String;)V

    .line 85
    const-string v0, "cambCompShare"

    invoke-virtual {v1, v0}, Lgvb;->j(Ljava/lang/String;)V

    .line 86
    sget-object v0, Lgvu;->COMPROVANTE_CAMBIO:Lgvu;

    invoke-virtual {v1, v0}, Lgvb;->a(Lgvu;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comprovante - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lgvb;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->g(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1, v7}, Lgvb;->q(Z)V

    .line 91
    return-object v1
.end method

.method static synthetic a(Lgbh;Lgar;)Lgvb;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lgbh;->a(Lgar;)Lgvb;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lgvb;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 129
    new-instance v0, Lgvb;

    invoke-direct {v0}, Lgvb;-><init>()V

    .line 130
    iget-object v1, p0, Lgbh;->a:Landroid/app/Activity;

    const v2, 0x7f090a7c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->c(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lgbh;->a:Landroid/app/Activity;

    const v2, 0x7f090200

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->d(Ljava/lang/String;)V

    .line 133
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgvb;->e(Ljava/lang/String;)V

    .line 134
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgvb;->f(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, v3}, Lgvb;->e(Z)V

    .line 136
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgvb;->d(Z)V

    .line 137
    invoke-virtual {v0, p1}, Lgvb;->b(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, v3}, Lgvb;->q(Z)V

    .line 141
    return-object v0
.end method

.method private b(Lgaq;)Lgaq;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 98
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Lgaq;->c(Ljava/lang/String;)V

    .line 99
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lgaq;->d(Ljava/lang/String;)V

    .line 100
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lgaq;->a(Ljava/lang/String;)V

    .line 101
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lgaq;->b(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lgaq;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lgaq;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lgaq;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lgaq;->e(Ljava/lang/String;)V

    .line 104
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    invoke-virtual {p1}, Lgaq;->A()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgaq;->z(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lgbh;->c:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgaq;->u(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lgbh;->c:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgaq;->w(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lgbh;->c:Lmip;

    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgaq;->setConnUuid(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lgbh;->c:Lmip;

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgaq;->setTokenSessao(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lgbh;->c:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgaq;->setTokenTransacao(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-object p1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    iget-object v0, p0, Lgbh;->a:Landroid/app/Activity;

    const-string v1, "Erro ao criptografar campo de telefone"

    invoke-static {v0, v1}, Lhav;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lgar;)Lgvb;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p1}, Lgar;->getMensagemErro()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgbh;->a(Ljava/lang/String;)Lgvb;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lgbh;)Lgvb;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lgbh;->a()Lgvb;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lgbh;Lgar;)Lgvb;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lgbh;->b(Lgar;)Lgvb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lgaq;)V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lgbh;->b:Lgds;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lgbh;->b:Lgds;

    new-instance v1, Lgbi;

    invoke-direct {v1, p0}, Lgbi;-><init>(Lgbh;)V

    .line 63
    invoke-direct {p0, p1}, Lgbh;->b(Lgaq;)Lgaq;

    move-result-object v2

    .line 50
    invoke-interface {v0, v1, v2}, Lgds;->a(Lgkw;Lgaq;)V

    .line 65
    :cond_0
    return-void
.end method
