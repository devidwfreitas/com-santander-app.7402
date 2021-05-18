.class public Lgyr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgyk;
.implements Lgyq;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lgyp;

.field private c:Lgyj;

.field private d:Lmip;


# direct methods
.method public constructor <init>(Lgyp;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    .line 36
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lgyr;->a:Landroid/app/Activity;

    .line 37
    iput-object p1, p0, Lgyr;->b:Lgyp;

    .line 38
    new-instance v0, Lgyl;

    iget-object v1, p0, Lgyr;->a:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lgyl;-><init>(Lgyk;Landroid/app/Activity;)V

    iput-object v0, p0, Lgyr;->c:Lgyj;

    .line 39
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lgyr;->d:Lmip;

    .line 40
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgyr;->a:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    const-string v1, "tipo"

    sget-object v2, Lnat;->USUARIO_CONSULTIVO:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lgyr;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 150
    return-void
.end method

.method private f(Lgxa;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 92
    iget-object v0, p0, Lgyr;->c:Lgyj;

    invoke-interface {v0}, Lgyj;->a()Lgyi;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lgyr;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 96
    :pswitch_0
    invoke-virtual {v0}, Lgyi;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lgyr;->c:Lgyj;

    invoke-virtual {p1}, Lgxa;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lgyj;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lgyr;->c:Lgyj;

    invoke-virtual {p1}, Lgxa;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lgyj;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v0, p0, Lgyr;->c:Lgyj;

    invoke-virtual {p1}, Lgxa;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lgyj;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 81
    const/4 v0, -0x1

    .line 82
    iget-object v1, p0, Lgyr;->c:Lgyj;

    invoke-interface {v1}, Lgyj;->a()Lgyi;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lgyi;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    const/4 v0, 0x0

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    invoke-virtual {v1}, Lgyi;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v2

    invoke-virtual {v2}, Lmiq;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lgxa;)V
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p1}, Lgxa;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p1}, Lgxa;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgws;->valueOf(Ljava/lang/String;)Lgws;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lgyr;->d:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgyr;->a:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lgyr;->b:Lgyp;

    invoke-interface {v1, v0}, Lgyp;->a(Landroid/content/Intent;)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    sget-object v1, Lgys;->a:[I

    invoke-virtual {v0}, Lgws;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 126
    :pswitch_0
    iget-object v0, p0, Lgyr;->a:Landroid/app/Activity;

    const-string v1, "CDB_RECOMPENSA"

    invoke-static {v0, v1}, Ljcw;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v0, p0, Lgyr;->a:Landroid/app/Activity;

    const-string v1, "POUPANCA"

    invoke-static {v0, v1}, Ljcw;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lgxe;)V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public b(Lgxa;)V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lgyr;->c:Lgyj;

    invoke-interface {v0, p1}, Lgyj;->a(Lgxa;)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-direct {p0}, Lgyr;->b()V

    goto :goto_0
.end method

.method public c(Lgxa;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lgyr;->d:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lgyr;->d:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmir;->a(Z)V

    .line 55
    iget-object v0, p0, Lgyr;->c:Lgyj;

    invoke-interface {v0, p1}, Lgyj;->b(Lgxa;)V

    .line 57
    :cond_0
    return-void
.end method

.method public d(Lgxa;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lgyr;->c:Lgyj;

    invoke-interface {v0}, Lgyj;->a()Lgyi;

    move-result-object v0

    .line 62
    invoke-direct {p0, p1}, Lgyr;->f(Lgxa;)V

    .line 63
    iget-object v1, p0, Lgyr;->b:Lgyp;

    invoke-virtual {v0}, Lgyi;->c()Z

    move-result v0

    invoke-interface {v1, v0, p1}, Lgyp;->a(ZLgxa;)V

    .line 64
    return-void
.end method

.method public e(Lgxa;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    iget-object v0, p0, Lgyr;->c:Lgyj;

    invoke-interface {v0}, Lgyj;->a()Lgyi;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lgyi;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lgyi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    :cond_0
    iget-object v0, p0, Lgyr;->c:Lgyj;

    invoke-virtual {p1}, Lgxa;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lgyj;->a(Ljava/lang/String;Z)V

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    invoke-virtual {v0}, Lgyi;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v2

    invoke-virtual {v2}, Lmiq;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    invoke-virtual {v0}, Lgyi;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lgxa;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lgyi;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    iget-object v0, p0, Lgyr;->c:Lgyj;

    invoke-virtual {p1}, Lgxa;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lgyj;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {v0}, Lgyi;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lgyr;->c:Lgyj;

    invoke-virtual {p1}, Lgxa;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lgyj;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
