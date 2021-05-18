.class public Lkkd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lfqa;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 28
    new-instance v1, Lfqa;

    invoke-direct {v1}, Lfqa;-><init>()V

    .line 29
    const-string v2, "PROGRAMA\u00c7\u00c3O"

    invoke-virtual {v1, v2}, Lfqa;->b(Ljava/lang/String;)V

    .line 30
    const-string v2, "SEMANAL"

    invoke-virtual {v1, v2}, Lfqa;->a(Ljava/lang/String;)V

    .line 32
    new-instance v2, Lfqa;

    invoke-direct {v2}, Lfqa;-><init>()V

    .line 33
    const-string v3, "PROGRAMA\u00c7\u00c3O"

    invoke-virtual {v2, v3}, Lfqa;->b(Ljava/lang/String;)V

    .line 34
    const-string v3, "MENSAL"

    invoke-virtual {v2, v3}, Lfqa;->a(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 39
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
    .line 22
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lgkw;->a(Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public b()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lfvf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->c()Lkhx;

    move-result-object v0

    invoke-virtual {v0}, Lkhx;->b()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method
