.class public Lgog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgof;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lgof",
        "<TE;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 19
    new-instance v2, Lmzd;

    invoke-direct {v2}, Lmzd;-><init>()V

    .line 22
    const/4 v0, 0x0

    .line 24
    :try_start_0
    const-string v1, ""

    .line 25
    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {v2, p1, p4}, Lmzd;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    :goto_0
    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {p3, v1, v3, v4}, Ljcd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, p5, v3}, Lmzd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {v2, p2, v1}, Lmzd;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    :cond_0
    :goto_1
    return-object v0

    .line 28
    :cond_1
    invoke-virtual {v2, p4}, Lmzd;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 37
    :catch_0
    move-exception v1

    .line 38
    const-string v2, "ERROR_PARSER"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v1, Lmzd;

    invoke-direct {v1}, Lmzd;-><init>()V

    .line 71
    const/4 v0, 0x0

    .line 74
    :try_start_0
    invoke-virtual {v1, p1, p4, p6}, Lmzd;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    const-string v3, ""

    invoke-static {p3, v2, v3, p7}, Ljcd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 77
    if-eqz v2, :cond_0

    .line 78
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, p5, v3}, Lmzd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {v1, p2, v2}, Lmzd;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :cond_0
    :goto_0
    return-object v0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    const-string v2, "ERROR_PARSER"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v1, Lmzd;

    invoke-direct {v1}, Lmzd;-><init>()V

    .line 49
    const/4 v0, 0x0

    .line 52
    :try_start_0
    invoke-virtual {v1, p1, p4}, Lmzd;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    const-string v3, ""

    invoke-static {p3, v2, v3, p6}, Ljcd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_0

    .line 56
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, p5, v3}, Lmzd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {v1, p2, v2}, Lmzd;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    const-string v2, "ERROR_PARSER"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
