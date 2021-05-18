.class public final Letr;
.super Letb;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Letb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leqm;)Letq;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x3b

    const/4 v5, 0x0

    .line 35
    invoke-static {p1}, Letr;->c(Leqm;)Ljava/lang/String;

    move-result-object v1

    .line 36
    const-string v2, "WIFI:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-object v0

    .line 39
    :cond_1
    const-string v2, "S:"

    invoke-static {v2, v1, v6, v5}, Letr;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v2

    .line 40
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 43
    const-string v0, "P:"

    invoke-static {v0, v1, v6, v5}, Letr;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v3

    .line 44
    const-string v0, "T:"

    invoke-static {v0, v1, v6, v5}, Letr;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    const-string v0, "nopass"

    .line 48
    :cond_2
    const-string v4, "H:"

    invoke-static {v4, v1, v6, v5}, Letr;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 49
    new-instance v1, Letq;

    invoke-direct {v1, v0, v2, v3, v4}, Letq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_0
.end method

.method public synthetic b(Leqm;)Lesx;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Letr;->a(Leqm;)Letq;

    move-result-object v0

    return-object v0
.end method
