.class Lmvp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmsk;


# instance fields
.field final synthetic a:Lmvm;


# direct methods
.method constructor <init>(Lmvm;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lmvp;->a:Lmvm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lmvp;->a:Lmvm;

    invoke-static {v0}, Lmvm;->a(Lmvm;)Lmuq;

    move-result-object v0

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lmvp;->a:Lmvm;

    invoke-static {v0}, Lmvm;->a(Lmvm;)Lmuq;

    move-result-object v0

    invoke-interface {v0}, Lmuq;->g()V

    .line 116
    iget-object v0, p0, Lmvp;->a:Lmvm;

    invoke-static {v0}, Lmvm;->a(Lmvm;)Lmuq;

    move-result-object v0

    invoke-interface {v0}, Lmuq;->d()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lmvp;->a:Lmvm;

    invoke-static {v0}, Lmvm;->a(Lmvm;)Lmuq;

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lmvp;->a:Lmvm;

    invoke-static {v0}, Lmvm;->a(Lmvm;)Lmuq;

    move-result-object v0

    invoke-interface {v0}, Lmuq;->d()V

    .line 134
    iget-object v0, p0, Lmvp;->a:Lmvm;

    invoke-static {v0}, Lmvm;->a(Lmvm;)Lmuq;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmvq;

    invoke-direct {v2, p0}, Lmvq;-><init>(Lmvp;)V

    invoke-interface {v0, v1, v2}, Lmuq;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lmvp;->a:Lmvm;

    invoke-static {v0, p1}, Lmvm;->a(Lmvm;Ljava/lang/String;)V

    .line 127
    return-void
.end method
