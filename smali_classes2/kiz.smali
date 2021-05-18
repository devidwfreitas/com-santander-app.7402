.class public Lkiz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkht;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lkiz;)Lkht;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lkiz;->a:Lkht;

    return-object v0
.end method

.method static synthetic a(Lkiz;Lkht;)Lkht;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lkiz;->a:Lkht;

    return-object p1
.end method


# virtual methods
.method public a()Lkhv;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 59
    const/4 v0, 0x0

    .line 61
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dados_guardar_recarga"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    new-instance v0, Lkhv;

    invoke-direct {v0}, Lkhv;-><init>()V

    .line 65
    const-string v2, "recarga_operadora"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkhv;->a(Ljava/lang/String;)V

    .line 66
    const-string v2, "recarga_operadora_position"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lkhv;->b(I)V

    .line 67
    const-string v2, "recarga_ddd"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnag;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkhv;->b(Ljava/lang/String;)V

    .line 68
    const-string v2, "recarga_numero"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnag;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkhv;->c(Ljava/lang/String;)V

    .line 69
    const-string v2, "recarga_valor"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lkhv;->a(I)V

    .line 70
    const-string v2, "recarga_guardar"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lkhv;->a(Z)V

    .line 73
    :cond_0
    return-object v0
.end method

.method public a(Lgkw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgkw",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lgkw;->a(Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method public a(Lkhv;)V
    .locals 3

    .prologue
    .line 77
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dados_guardar_recarga"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    const-string v1, "recarga_operadora"

    invoke-virtual {p1}, Lkhv;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    const-string v1, "recarga_operadora_position"

    invoke-virtual {p1}, Lkhv;->g()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 82
    const-string v1, "recarga_ddd"

    invoke-virtual {p1}, Lkhv;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    const-string v1, "recarga_numero"

    invoke-virtual {p1}, Lkhv;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    const-string v1, "recarga_valor"

    invoke-virtual {p1}, Lkhv;->f()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 85
    const-string v1, "recarga_guardar"

    invoke-virtual {p1}, Lkhv;->e()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    return-void
.end method

.method public b(Lgkw;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgkw",
            "<",
            "Lkht;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lkiz;->a:Lkht;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lkiz;->a:Lkht;

    invoke-interface {p1, v0}, Lgkw;->a(Ljava/lang/Object;)V

    .line 56
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v0, Lkhu;

    invoke-direct {v0}, Lkhu;-><init>()V

    .line 41
    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkhu;->a(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkhu;->c(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkhu;->b(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkhu;->e(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkhu;->f(Ljava/lang/String;)V

    .line 48
    new-instance v1, Lkjb;

    new-instance v2, Lkja;

    invoke-direct {v2, p0, p1}, Lkja;-><init>(Lkiz;Lgkw;)V

    invoke-direct {v1, v0, v2}, Lkjb;-><init>(Lkhu;Lgkv;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 54
    invoke-virtual {v1, v0}, Lkjb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
