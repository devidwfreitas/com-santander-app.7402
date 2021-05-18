.class public Lgyl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgyj;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/content/SharedPreferences;

.field private c:Lgyk;


# direct methods
.method public constructor <init>(Lgyk;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lgyl;->a:Landroid/app/Activity;

    .line 33
    iput-object p1, p0, Lgyl;->c:Lgyk;

    .line 34
    return-void
.end method

.method static synthetic a(Lgyl;)Lgyk;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lgyl;->c:Lgyk;

    return-object v0
.end method


# virtual methods
.method public a()Lgyi;
    .locals 6

    .prologue
    .line 86
    iget-object v0, p0, Lgyl;->a:Landroid/app/Activity;

    const-string v1, "porquinhoJanelaPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lgyl;->b:Landroid/content/SharedPreferences;

    .line 87
    new-instance v2, Lgyi;

    invoke-direct {v2}, Lgyi;-><init>()V

    .line 88
    const-string v1, ""

    .line 91
    :try_start_0
    iget-object v0, p0, Lgyl;->b:Landroid/content/SharedPreferences;

    const-string v3, "porquinho_cpf"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    :try_start_1
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lgyl;->b:Landroid/content/SharedPreferences;

    const-string v3, "porquinho_cpf"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnag;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 98
    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Lgyi;->b(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lgyl;->b:Landroid/content/SharedPreferences;

    const-string v1, "porquinho_data"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgyi;->a(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lgyl;->b:Landroid/content/SharedPreferences;

    const-string v1, "state_porquinho"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Lgyi;->a(Z)V

    .line 102
    return-object v2

    .line 94
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 95
    :goto_1
    const-string v3, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public a(Lgxa;)V
    .locals 5

    .prologue
    .line 38
    new-instance v0, Lgxv;

    new-instance v1, Lgym;

    invoke-direct {v1, p0, p1}, Lgym;-><init>(Lgyl;Lgxa;)V

    iget-object v2, p0, Lgyl;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lgxv;-><init>(Lgkw;Landroid/app/Activity;)V

    .line 48
    invoke-virtual {p1}, Lgxa;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S"

    invoke-virtual {p1}, Lgxa;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lgxa;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lgxv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 68
    const-string v0, ""

    .line 72
    :try_start_0
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnag;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :goto_0
    iget-object v1, p0, Lgyl;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 78
    const-string v2, "porquinho_data"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    const-string v2, "state_porquinho"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 80
    const-string v2, "porquinho_cpf"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    return-void

    .line 73
    :catch_0
    move-exception v1

    .line 74
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b(Lgxa;)V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lgxv;

    new-instance v1, Lgyn;

    invoke-direct {v1, p0}, Lgyn;-><init>(Lgyl;)V

    iget-object v2, p0, Lgyl;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lgxv;-><init>(Lgkw;Landroid/app/Activity;)V

    .line 62
    invoke-virtual {p1}, Lgxa;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lgxa;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgxv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
