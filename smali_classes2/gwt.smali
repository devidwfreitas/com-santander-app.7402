.class public Lgwt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgyf;


# instance fields
.field private a:Lgxu;

.field private b:Landroid/app/Activity;

.field private c:Lcom/santander/app/components/view/cardLayout/CardLayout;

.field private d:Lcom/santander/app/components/view/cardLayout/CardLayout;

.field private e:Lcom/santander/app/components/view/cardLayout/CardLayout;

.field private f:Lgww;

.field private g:Landroid/app/Dialog;

.field private h:Lgyo;

.field private i:Z

.field private j:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/santander/app/components/view/cardLayout/CardLayout;Lcom/santander/app/components/view/cardLayout/CardLayout;Lcom/santander/app/components/view/cardLayout/CardLayout;Lgww;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lgwt;->b:Landroid/app/Activity;

    .line 71
    iput-object p2, p0, Lgwt;->c:Lcom/santander/app/components/view/cardLayout/CardLayout;

    .line 72
    iput-object p3, p0, Lgwt;->d:Lcom/santander/app/components/view/cardLayout/CardLayout;

    .line 73
    iput-object p4, p0, Lgwt;->e:Lcom/santander/app/components/view/cardLayout/CardLayout;

    .line 74
    iput-object p5, p0, Lgwt;->f:Lgww;

    .line 75
    const/4 v0, 0x3

    iput v0, p0, Lgwt;->j:I

    .line 77
    new-instance v0, Lgxt;

    invoke-direct {v0, p0, p1, p5}, Lgxt;-><init>(Lgyf;Landroid/app/Activity;Lgww;)V

    iput-object v0, p0, Lgwt;->a:Lgxu;

    .line 78
    iget-object v0, p0, Lgwt;->a:Lgxu;

    invoke-interface {v0}, Lgxu;->b()V

    .line 79
    iget-object v0, p0, Lgwt;->a:Lgxu;

    invoke-interface {v0}, Lgxu;->a()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/santander/app/components/view/cardLayout/CardLayout;Lgww;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lgwt;->b:Landroid/app/Activity;

    .line 60
    iput-object p2, p0, Lgwt;->c:Lcom/santander/app/components/view/cardLayout/CardLayout;

    .line 61
    iput-object p3, p0, Lgwt;->f:Lgww;

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lgwt;->j:I

    .line 64
    new-instance v0, Lgxt;

    invoke-direct {v0, p0, p1, p3}, Lgxt;-><init>(Lgyf;Landroid/app/Activity;Lgww;)V

    iput-object v0, p0, Lgwt;->a:Lgxu;

    .line 65
    iget-object v0, p0, Lgwt;->a:Lgxu;

    invoke-interface {v0}, Lgxu;->b()V

    .line 66
    iget-object v0, p0, Lgwt;->a:Lgxu;

    invoke-interface {v0}, Lgxu;->a()V

    .line 67
    return-void
.end method

.method static synthetic a(Lgwt;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lgwt;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lgwt;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lgwt;->g:Landroid/app/Dialog;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgwt;->b:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lgwt;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgwt;->b:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lgwt;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgwt;->b:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lgwt;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 113
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgwt;->b:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lgwt;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 124
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lgwt;->h()V

    .line 85
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lgwt;->c:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->setNumberOfDisplayedCards(I)V

    .line 209
    iget v0, p0, Lgwt;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lgwt;->d:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->setNumberOfDisplayedCards(I)V

    .line 211
    iget-object v0, p0, Lgwt;->e:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->setNumberOfDisplayedCards(I)V

    .line 213
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lgwt;->b:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 218
    return-void
.end method

.method public a(Lgsz;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lgwt;->c:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->setContractor(Lgsz;)V

    .line 140
    iget v0, p0, Lgwt;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lgwt;->d:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->setContractor(Lgsz;)V

    .line 142
    iget-object v0, p0, Lgwt;->e:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->setContractor(Lgsz;)V

    .line 144
    :cond_0
    return-void
.end method

.method public a(Lgta;)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lgwt;->c:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(Lgta;)Z

    .line 130
    iget v0, p0, Lgwt;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lgwt;->d:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(Lgta;)Z

    .line 132
    iget-object v0, p0, Lgwt;->e:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(Lgta;)Z

    .line 134
    :cond_0
    return-void
.end method

.method public a(Lgxa;)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lgwt;->h:Lgyo;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lgwt;->h:Lgyo;

    invoke-interface {v0, p1}, Lgyo;->a(Lgxa;)V

    .line 224
    :cond_0
    return-void
.end method

.method public a(Lgyo;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lgwt;->h:Lgyo;

    .line 55
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgwt;->i:Z

    .line 238
    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lgwt;->b:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lgwt;->b:Landroid/app/Activity;

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 193
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lgwt;->c:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-virtual {v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a()V

    .line 149
    iget-object v0, p0, Lgwt;->c:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(Ljava/util/ArrayList;)Z

    .line 151
    iget v0, p0, Lgwt;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lgwt;->d:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-virtual {v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a()V

    .line 153
    iget-object v0, p0, Lgwt;->e:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-virtual {v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a()V

    .line 154
    iget-object v0, p0, Lgwt;->d:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(Ljava/util/ArrayList;)Z

    .line 155
    iget-object v0, p0, Lgwt;->e:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(Ljava/util/ArrayList;)Z

    .line 157
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lgwt;->g()V

    .line 90
    return-void
.end method

.method public b(Lgta;)V
    .locals 7

    .prologue
    .line 161
    invoke-virtual {p1}, Lgta;->b()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v1, "santanderpf://deeplink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-static {}, Lhbr;->a()Lhbr;

    move-result-object v0

    iget-object v1, p0, Lgwt;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Lgta;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhbr;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lgwt;->b:Landroid/app/Activity;

    new-instance v1, Lgwu;

    invoke-direct {v1, p0, p1}, Lgwu;-><init>(Lgwt;Lgta;)V

    new-instance v2, Lgwv;

    invoke-direct {v2, p0}, Lgwv;-><init>(Lgwt;)V

    .line 182
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->s()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lgwt;->b:Landroid/app/Activity;

    .line 183
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090134

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 184
    :goto_1
    iget-object v4, p0, Lgwt;->b:Landroid/app/Activity;

    .line 185
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090191

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lgwt;->b:Landroid/app/Activity;

    .line 186
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09018e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 168
    invoke-static/range {v0 .. v5}, Lmxn;->b(Landroid/app/Activity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lgwt;->g:Landroid/app/Dialog;

    goto :goto_0

    .line 183
    :cond_2
    iget-object v3, p0, Lgwt;->b:Landroid/app/Activity;

    .line 184
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090133

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public c()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lgwt;->i()V

    .line 107
    return-void
.end method

.method public c(Lgta;)V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lgwt;->c:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->b(Lgta;)Z

    .line 199
    iget v0, p0, Lgwt;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lgwt;->d:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->b(Lgta;)Z

    .line 201
    iget-object v0, p0, Lgwt;->e:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->b(Lgta;)Z

    .line 203
    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lgwt;->j()V

    .line 118
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgwt;->b:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    const-string v1, "tipo"

    sget-object v2, Lnat;->USUARIO_CONSULTIVO:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 229
    iget-object v1, p0, Lgwt;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 230
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lgwt;->i:Z

    return v0
.end method
