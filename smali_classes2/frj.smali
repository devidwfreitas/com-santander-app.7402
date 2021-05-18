.class public Lfrj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfrf;)Lfrb;
    .locals 6

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 23
    new-instance v0, Lmzd;

    invoke-direct {v0}, Lmzd;-><init>()V

    .line 27
    :try_start_0
    const-string v2, "detalhar"

    invoke-virtual {v0, p1, v2}, Lmzd;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static {}, Lhas;->L()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5}, Ljcd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    const-string v3, "return"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lmzd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    .line 32
    const-class v3, Lfrb;

    invoke-virtual {v0, v3, v2}, Lmzd;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfrb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-object v0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    const-string v2, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public b(Lfrf;)Lfrb;
    .locals 6

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 45
    new-instance v0, Lmzd;

    invoke-direct {v0}, Lmzd;-><init>()V

    .line 49
    :try_start_0
    const-string v2, "cancelar"

    invoke-virtual {v0, p1, v2}, Lmzd;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {}, Lhas;->L()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5}, Ljcd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    const-string v3, "return"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lmzd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    .line 54
    const-class v3, Lfrb;

    invoke-virtual {v0, v3, v2}, Lmzd;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfrb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string v2, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
