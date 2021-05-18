.class public Lipu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lipq;


# instance fields
.field private a:Lioy;

.field private b:Lipt;

.field private c:Liia;

.field private d:Landroid/app/Activity;

.field private e:Lmip;

.field private f:Ljla;

.field private g:Lils;

.field private h:Landroid/app/Dialog;

.field private i:Lirm;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lipt;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lioy;

    invoke-direct {v0}, Lioy;-><init>()V

    iput-object v0, p0, Lipu;->a:Lioy;

    .line 60
    iput-object p1, p0, Lipu;->d:Landroid/app/Activity;

    .line 61
    iput-object p2, p0, Lipu;->b:Lipt;

    .line 62
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lipu;->e:Lmip;

    .line 63
    new-instance v0, Liib;

    invoke-direct {v0}, Liib;-><init>()V

    iput-object v0, p0, Lipu;->c:Liia;

    .line 64
    new-instance v0, Ljlb;

    invoke-direct {v0}, Ljlb;-><init>()V

    iput-object v0, p0, Lipu;->f:Ljla;

    .line 65
    new-instance v0, Lils;

    iget-object v1, p0, Lipu;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lils;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lipu;->g:Lils;

    .line 66
    new-instance v0, Lirm;

    invoke-direct {v0}, Lirm;-><init>()V

    iput-object v0, p0, Lipu;->i:Lirm;

    .line 67
    return-void
.end method

.method static synthetic a(Lipu;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lipu;->h:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lipu;)Lipt;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lipu;->b:Lipt;

    return-object v0
.end method

.method static synthetic b(Lipu;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lipu;->h:Landroid/app/Dialog;

    return-object v0
.end method

.method private b(Lipp;)[Lmzp;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 222
    const/4 v0, 0x0

    .line 224
    sget-object v1, Liqb;->a:[I

    invoke-virtual {p1}, Lipp;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 240
    :goto_0
    return-object v0

    .line 227
    :pswitch_0
    new-array v0, v4, [Lmzp;

    sget-object v1, Lmzp;->RELOAD_POUPANCA:Lmzp;

    aput-object v1, v0, v3

    goto :goto_0

    .line 233
    :pswitch_1
    const/4 v0, 0x2

    new-array v0, v0, [Lmzp;

    sget-object v1, Lmzp;->RELOAD_CARTOES:Lmzp;

    aput-object v1, v0, v3

    sget-object v1, Lmzp;->RELOAD_CARTOES_DESBLOQUEIO:Lmzp;

    aput-object v1, v0, v4

    goto :goto_0

    .line 237
    :pswitch_2
    new-array v0, v4, [Lmzp;

    sget-object v1, Lmzp;->RELOAD_CARTOES:Lmzp;

    aput-object v1, v0, v3

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lipu;->e:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->p()Liow;

    move-result-object v0

    invoke-virtual {v0}, Liow;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lipu;->b:Lipt;

    invoke-interface {v0}, Lipt;->d()V

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lipu;->b:Lipt;

    invoke-interface {v0}, Lipt;->c()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-static {p1, p2, p3}, Lgyy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lioy;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lipu;->a:Lioy;

    .line 99
    return-void
.end method

.method public a(Lipp;)V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lipu;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lipu;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lipu;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 199
    :cond_0
    iget-object v0, p0, Lipu;->d:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lipu;->h:Landroid/app/Dialog;

    .line 201
    new-instance v0, Lmzn;

    invoke-direct {v0}, Lmzn;-><init>()V

    .line 203
    invoke-direct {p0, p1}, Lipu;->b(Lipp;)[Lmzp;

    move-result-object v1

    new-instance v2, Liqa;

    invoke-direct {v2, p0, p1}, Liqa;-><init>(Lipu;Lipp;)V

    invoke-virtual {v0, v1, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    .line 219
    return-void
.end method

.method public a(Lipr;)V
    .locals 3

    .prologue
    .line 161
    new-instance v0, Ljava/util/LinkedList;

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->q()Lgvx;

    move-result-object v1

    invoke-interface {v1}, Lgvx;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 162
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 164
    iget-object v1, p0, Lipu;->i:Lirm;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getIndexConta()I

    move-result v0

    new-instance v2, Lipy;

    invoke-direct {v2, p0, p1}, Lipy;-><init>(Lipu;Lipr;)V

    invoke-virtual {v1, v0, v2}, Lirm;->a(ILirt;)V

    .line 174
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lipu;->c:Liia;

    new-instance v1, Lipv;

    invoke-direct {v1, p0}, Lipv;-><init>(Lipu;)V

    invoke-interface {v0, v1}, Liia;->a(Lgkw;)V

    .line 127
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 78
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    return-void

    .line 81
    :cond_1
    invoke-static {p1, p3}, Lgyy;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyv;

    .line 84
    invoke-virtual {v0}, Lgyv;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 85
    invoke-static {p1, v0}, Lgyy;->a(Landroid/content/Context;Lgyv;)V

    goto :goto_0
.end method

.method public b(Lipr;)V
    .locals 3

    .prologue
    .line 178
    new-instance v0, Ljava/util/LinkedList;

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->q()Lgvx;

    move-result-object v1

    invoke-interface {v1}, Lgvx;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 179
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 181
    iget-object v1, p0, Lipu;->i:Lirm;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getIndexConta()I

    move-result v0

    new-instance v2, Lipz;

    invoke-direct {v2, p0, p1}, Lipz;-><init>(Lipu;Lipr;)V

    invoke-virtual {v1, v0, v2}, Lirm;->b(ILirt;)V

    .line 191
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lipu;->f:Ljla;

    new-instance v1, Lipw;

    invoke-direct {v1, p0}, Lipw;-><init>(Lipu;)V

    new-instance v2, Ljdg;

    invoke-direct {v2}, Ljdg;-><init>()V

    invoke-interface {v0, v1, v2}, Ljla;->a(Lgkw;Ljdg;)V

    .line 142
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lipu;->f:Ljla;

    new-instance v1, Lipx;

    invoke-direct {v1, p0}, Lipx;-><init>(Lipu;)V

    invoke-interface {v0, v1}, Ljla;->a(Lirs;)V

    .line 157
    return-void
.end method
