.class public Lmqn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lmqn;->a:Landroid/app/Activity;

    .line 44
    invoke-static {p1}, Lano;->a(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lmqn;->b:Landroid/app/Dialog;

    .line 45
    return-void
.end method

.method static synthetic a(Lmqn;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lmqn;->b:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public a(Lgkw;)V
    .locals 5

    .prologue
    .line 111
    const-string v0, ""

    .line 112
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 113
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    const-string v2, "transfer/v1/availableLimit"

    sget-object v3, Lim;->POST:Lim;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lgnz;->a(Ljava/lang/String;Lim;Ljava/lang/String;Z)Liq;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lmqn;->b:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 120
    :try_start_0
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    invoke-virtual {v1}, Lgnz;->b()Lje;

    move-result-object v1

    new-instance v2, Lmqu;

    invoke-direct {v2, p0, p1}, Lmqu;-><init>(Lmqn;Lgkw;)V

    invoke-virtual {v1, v0, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lgkw;Liq;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lmqn;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 146
    :try_start_0
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v0

    invoke-virtual {v0}, Lgnz;->b()Lje;

    move-result-object v0

    new-instance v1, Lmqv;

    invoke-direct {v1, p0, p1}, Lmqv;-><init>(Lmqn;Lgkw;)V

    invoke-virtual {v0, p2, v1}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lgkw;Lmky;)V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lmrc;

    new-instance v1, Lmqp;

    invoke-direct {v1, p0, p1}, Lmqp;-><init>(Lmqn;Lgkw;)V

    iget-object v2, p0, Lmqn;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lmrc;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lmky;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 64
    invoke-virtual {v0, v1}, Lmrc;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    return-void
.end method

.method public a(Lgkw;Lmla;)V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lmrd;

    new-instance v1, Lmqr;

    invoke-direct {v1, p0, p1}, Lmqr;-><init>(Lmqn;Lgkw;)V

    iget-object v2, p0, Lmqn;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lmrd;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lmla;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 84
    invoke-virtual {v0, v1}, Lmrd;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    return-void
.end method

.method public a(Lgkw;Lmlc;)V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Lmre;

    new-instance v1, Lmqs;

    invoke-direct {v1, p0, p1}, Lmqs;-><init>(Lmqn;Lgkw;)V

    iget-object v2, p0, Lmqn;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lmre;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lmlc;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 94
    invoke-virtual {v0, v1}, Lmre;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    return-void
.end method

.method public a(Lgkw;Lmll;)V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lmrf;

    new-instance v1, Lmqo;

    invoke-direct {v1, p0, p1}, Lmqo;-><init>(Lmqn;Lgkw;)V

    iget-object v2, p0, Lmqn;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lmrf;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lmll;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 54
    invoke-virtual {v0, v1}, Lmrf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    return-void
.end method

.method public a(Lgkw;Lmlq;)V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Lmrh;

    new-instance v1, Lmqq;

    invoke-direct {v1, p0, p1}, Lmqq;-><init>(Lmqn;Lgkw;)V

    iget-object v2, p0, Lmqn;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lmrh;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lmlq;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 74
    invoke-virtual {v0, v1}, Lmrh;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    return-void
.end method

.method public b(Lgkw;Liq;)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lmqn;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 172
    :try_start_0
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v0

    invoke-virtual {v0}, Lgnz;->b()Lje;

    move-result-object v0

    new-instance v1, Lmqw;

    invoke-direct {v1, p0, p1}, Lmqw;-><init>(Lmqn;Lgkw;)V

    invoke-virtual {v0, p2, v1}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Lgkw;Lmlq;)V
    .locals 3

    .prologue
    .line 99
    new-instance v0, Lmrb;

    new-instance v1, Lmqt;

    invoke-direct {v1, p0, p1}, Lmqt;-><init>(Lmqn;Lgkw;)V

    iget-object v2, p0, Lmqn;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lmrb;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lmlq;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 104
    invoke-virtual {v0, v1}, Lmrb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 105
    return-void
.end method
