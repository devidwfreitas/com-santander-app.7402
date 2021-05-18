.class public Liib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liia;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lgkw;)V
    .locals 6

    .prologue
    .line 32
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v1, Liic;->FORMALIZACAO_CHECK_PROPOSAL:Liic;

    invoke-virtual {v1}, Liic;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->POST:Lim;

    const/4 v3, 0x0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 34
    new-instance v1, Lgnv;

    invoke-direct {v1, p1, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 36
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 39
    :try_start_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lgkw;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 69
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v1, Liic;->FORMALIZACAO_FIND_PROPOSAL:Liic;

    invoke-virtual {v1}, Liic;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->POST:Lim;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 71
    new-instance v1, Lgnv;

    invoke-direct {v1, p1, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 73
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 76
    :try_start_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lgkw;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 86
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v1, Liic;->FORMALIZACAO_AUTHORIZE_PROPOSAL:Liic;

    invoke-virtual {v1}, Liic;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->POST:Lim;

    const/4 v5, 0x1

    move-object v3, p3

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 88
    new-instance v1, Lgnv;

    invoke-direct {v1, p1, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 90
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 93
    :try_start_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b(Lgkw;)V
    .locals 6

    .prologue
    .line 51
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v1, Liic;->FORMALIZACAO_FIND_PROPOSALS:Liic;

    invoke-virtual {v1}, Liic;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->POST:Lim;

    const/4 v3, 0x0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 53
    new-instance v1, Lgnv;

    invoke-direct {v1, p1, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 55
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 58
    :try_start_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b(Lgkw;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 103
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v1, Liic;->FORMALIZACAO_UPDATE_PROPOSAL:Liic;

    invoke-virtual {v1}, Liic;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->PUT:Lim;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 104
    new-instance v1, Lgnv;

    invoke-direct {v1, p1, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 106
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 109
    :try_start_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c(Lgkw;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 119
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v1, Liic;->FORMALIZACAO_REASONS_PROPOSAL:Liic;

    invoke-virtual {v1}, Liic;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->POST:Lim;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 120
    new-instance v1, Lgnv;

    invoke-direct {v1, p1, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 122
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 125
    :try_start_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public d(Lgkw;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 134
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v1, Liic;->FORMALIZACAO_CANCEL_PROPOSAL:Liic;

    invoke-virtual {v1}, Liic;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->PUT:Lim;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 135
    new-instance v1, Lgnv;

    invoke-direct {v1, p1, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 137
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 140
    :try_start_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
