.class public Lndz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Lgyv;
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lgyu;

    invoke-direct {v0, p1}, Lgyu;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {v0}, Lgyu;->a()V

    .line 44
    invoke-virtual {v0}, Lgyu;->c()Ljava/util/List;

    move-result-object v1

    .line 45
    invoke-virtual {v0}, Lgyu;->close()V

    .line 47
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyv;

    .line 48
    invoke-virtual {v0}, Lgyv;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lgyv;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lgyv;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnag;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lgyv;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p1}, Lgyv;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lalb;->a(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lgyv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lgyu;

    invoke-direct {v0, p1}, Lgyu;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {v0}, Lgyu;->a()V

    .line 27
    invoke-virtual {v0}, Lgyu;->c()Ljava/util/List;

    move-result-object v1

    .line 28
    invoke-virtual {v0}, Lgyu;->close()V

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyv;

    .line 33
    invoke-virtual {v0}, Lgyv;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lgyv;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 35
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    :cond_1
    return-object v2
.end method

.method public b(Lgyv;)J
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p1}, Lgyv;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lalb;->d(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
