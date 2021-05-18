.class public final Lgmy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lanb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->q()Lgvx;

    move-result-object v1

    invoke-interface {v1}, Lgvx;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 25
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->q()Lgvx;

    move-result-object v1

    invoke-interface {v1}, Lgvx;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    :cond_0
    invoke-static {v0}, Lgmy;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lanb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    if-eqz p0, :cond_0

    .line 33
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 34
    new-instance v3, Lgmx;

    invoke-direct {v3, v0}, Lgmx;-><init>(Lcom/santander/app/contacorrente/domain/Conta;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_0
    return-object v1
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lghu;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lanb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p0}, Lgmy;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-static {p1}, Lgmy;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    return-object v0
.end method

.method public static b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lanb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->s()Lght;

    move-result-object v1

    invoke-interface {v1}, Lght;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 43
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->s()Lght;

    move-result-object v1

    invoke-interface {v1}, Lght;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    :cond_0
    invoke-static {v0}, Lgmy;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lghu;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lanb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    if-eqz p0, :cond_0

    .line 59
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    .line 60
    new-instance v3, Lgmw;

    invoke-direct {v3, v0}, Lgmw;-><init>(Lghu;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    return-object v1
.end method

.method public static c(Ljava/util/List;)Lamy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;)",
            "Lamy;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p0}, Lgmy;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 85
    new-instance v1, Lamy;

    invoke-direct {v1, v0}, Lamy;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public static c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lanb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->s()Lght;

    move-result-object v1

    invoke-interface {v1}, Lght;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->s()Lght;

    move-result-object v1

    invoke-interface {v1}, Lght;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    :cond_0
    invoke-static {v0}, Lgmy;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/util/List;)Lamy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lghu;",
            ">;)",
            "Lamy;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p0}, Lgmy;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 100
    new-instance v1, Lamy;

    invoke-direct {v1, v0}, Lamy;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public static d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lanb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Lgmy;->a()Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-static {}, Lgmy;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    return-object v0
.end method

.method public static e()Lamy;
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Lgmy;->a()Ljava/util/List;

    move-result-object v0

    .line 80
    new-instance v1, Lamy;

    invoke-direct {v1, v0}, Lamy;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public static f()Lamy;
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lgmy;->b()Ljava/util/List;

    move-result-object v0

    .line 90
    new-instance v1, Lamy;

    invoke-direct {v1, v0}, Lamy;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public static g()Lamy;
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lgmy;->c()Ljava/util/List;

    move-result-object v0

    .line 95
    new-instance v1, Lamy;

    invoke-direct {v1, v0}, Lamy;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public static h()Lamy;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-static {}, Lgmy;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    invoke-static {}, Lgmy;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    new-instance v1, Lamy;

    invoke-direct {v1, v0}, Lamy;-><init>(Ljava/util/List;)V

    return-object v1
.end method
