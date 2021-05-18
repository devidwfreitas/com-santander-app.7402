.class public Lfdi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leqp;


# instance fields
.field private a:Leqk;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Leqo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leqk;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfdi;->b:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lfdi;->a:Leqk;

    .line 34
    return-void
.end method


# virtual methods
.method protected a()Leqk;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lfdi;->a:Leqk;

    return-object v0
.end method

.method protected a(Lepw;)Leqm;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lfdi;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    :try_start_0
    iget-object v0, p0, Lfdi;->a:Leqk;

    instance-of v0, v0, Leqe;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lfdi;->a:Leqk;

    check-cast v0, Leqe;

    invoke-virtual {v0, p1}, Leqe;->b(Lepw;)Leqm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 83
    iget-object v1, p0, Lfdi;->a:Leqk;

    invoke-interface {v1}, Leqk;->a()V

    .line 81
    :goto_0
    return-object v0

    .line 77
    :cond_0
    :try_start_1
    iget-object v0, p0, Lfdi;->a:Leqk;

    invoke-interface {v0, p1}, Leqk;->a(Lepw;)Leqm;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 83
    iget-object v1, p0, Lfdi;->a:Leqk;

    invoke-interface {v1}, Leqk;->a()V

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 81
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lfdi;->a:Leqk;

    invoke-interface {v1}, Leqk;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lfdi;->a:Leqk;

    invoke-interface {v1}, Leqk;->a()V

    throw v0
.end method

.method public a(Leqd;)Leqm;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lfdi;->b(Leqd;)Lepw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfdi;->a(Lepw;)Leqm;

    move-result-object v0

    return-object v0
.end method

.method public a(Leqo;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lfdi;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method protected b(Leqd;)Lepw;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lepw;

    new-instance v1, Leub;

    invoke-direct {v1, p1}, Leub;-><init>(Leqd;)V

    invoke-direct {v0, v1}, Lepw;-><init>(Lepv;)V

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Leqo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lfdi;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
