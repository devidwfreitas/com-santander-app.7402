.class public Lgdo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgbp;
.implements Lgdn;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lgck;

.field private c:Lgbo;

.field private d:Lgaw;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lgck;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    .line 43
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lgdo;->a:Landroid/app/Activity;

    .line 44
    iput-object p1, p0, Lgdo;->b:Lgck;

    .line 45
    new-instance v0, Lgbq;

    iget-object v1, p0, Lgdo;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lgbq;-><init>(Landroid/app/Activity;Lgbp;)V

    iput-object v0, p0, Lgdo;->c:Lgbo;

    .line 47
    iget-object v0, p0, Lgdo;->c:Lgbo;

    invoke-interface {v0}, Lgbo;->a()V

    .line 48
    return-void
.end method

.method static synthetic a(Lgdo;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lgdo;->g:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic b(Lgdo;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lgdo;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private b(Ljava/lang/String;Lgbb;)Z
    .locals 5

    .prologue
    const v4, 0x7f100b13

    const v3, 0x7f100b0f

    const/4 v0, 0x0

    .line 76
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    :cond_0
    iget-object v1, p0, Lgdo;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgdo;->a:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lmzv;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 90
    :goto_0
    return v0

    .line 81
    :cond_1
    const-string v1, ""

    iget-object v2, p0, Lgdo;->a:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lmzv;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 83
    if-nez p2, :cond_2

    .line 84
    iget-object v1, p0, Lgdo;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgdo;->a:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lmzv;->b(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 88
    :cond_2
    const-string v0, ""

    iget-object v1, p0, Lgdo;->a:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lmzv;->b(Ljava/lang/String;Landroid/view/View;)V

    .line 90
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Lgaw;)V
    .locals 5

    .prologue
    .line 109
    new-instance v1, Lnaf;

    invoke-direct {v1}, Lnaf;-><init>()V

    .line 112
    :try_start_0
    invoke-virtual {p1}, Lgaw;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgav;

    .line 113
    invoke-virtual {v0}, Lgav;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 114
    invoke-virtual {v0}, Lgav;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lnaf;->c([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgav;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    iget-object v0, p0, Lgdo;->a:Landroid/app/Activity;

    const-string v1, "Erro ao decriptografar campo de telefone"

    invoke-static {v0, v1}, Lhav;->c(Landroid/app/Activity;Ljava/lang/String;)V

    .line 121
    :cond_1
    :goto_1
    return-void

    .line 118
    :catch_1
    move-exception v0

    .line 119
    iget-object v0, p0, Lgdo;->a:Landroid/app/Activity;

    const-string v1, "Erro ao decriptografar campo de telefone"

    invoke-static {v0, v1}, Lhav;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public a(Lgaw;)V
    .locals 4

    .prologue
    .line 100
    iput-object p1, p0, Lgdo;->d:Lgaw;

    .line 101
    invoke-direct {p0, p1}, Lgdo;->c(Lgaw;)V

    .line 102
    iget-object v0, p0, Lgdo;->b:Lgck;

    invoke-virtual {p1}, Lgaw;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lgck;->a(Ljava/util/List;)V

    .line 103
    invoke-virtual {p1}, Lgaw;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgdo;->e:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Lgaw;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgdo;->f:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lgdo;->b:Lgck;

    invoke-virtual {p1}, Lgaw;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgdo;->e:Ljava/lang/String;

    iget-object v3, p0, Lgdo;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lgck;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public a(Lgax;)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lgdo;->a:Landroid/app/Activity;

    iget-object v1, p0, Lgdo;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgdp;

    invoke-direct {v2, p0}, Lgdp;-><init>(Lgdo;)V

    invoke-static {v0, p1, v1, v2}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lgdo;->g:Landroid/app/Dialog;

    .line 134
    return-void
.end method

.method public a(Ljava/lang/String;Lgbb;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lgdo;->b(Ljava/lang/String;Lgbb;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Lgaq;

    invoke-direct {v0}, Lgaq;-><init>()V

    .line 65
    iget-object v1, p0, Lgdo;->d:Lgaw;

    invoke-virtual {v1}, Lgaw;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgaq;->s(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lgdo;->d:Lgaw;

    invoke-virtual {v1}, Lgaw;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgaq;->t(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p1}, Lgaq;->z(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Lgbb;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgaq;->d(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Lgbb;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgaq;->m(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Lgbb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgaq;->e(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lgdo;->b:Lgck;

    invoke-interface {v1, v0}, Lgck;->a(Lgaq;)V

    .line 73
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public b(Lgaw;)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public b(Lgax;)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lgdo;->b:Lgck;

    iget-object v1, p0, Lgdo;->d:Lgaw;

    invoke-virtual {v1}, Lgaw;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lgck;->a(Ljava/util/ArrayList;)V

    .line 96
    return-void
.end method
