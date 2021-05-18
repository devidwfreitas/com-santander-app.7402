.class Lmsm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkw",
        "<",
        "Lmlp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lmsk;

.field final synthetic b:Lmsl;


# direct methods
.method constructor <init>(Lmsl;Lmsk;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lmsm;->b:Lmsl;

    iput-object p2, p0, Lmsm;->a:Lmsk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 92
    check-cast p1, Lmlp;

    invoke-virtual {p0, p1}, Lmsm;->a(Lmlp;)V

    return-void
.end method

.method public a(Lmlp;)V
    .locals 3

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Lmsm;->b:Lmsl;

    invoke-static {v0, p1}, Lmsl;->a(Lmsl;Lmlp;)Lmlp;

    .line 97
    invoke-virtual {p1}, Lmlp;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lmsm;->a:Lmsk;

    invoke-interface {v0}, Lmsk;->a()V

    .line 113
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p1}, Lmlp;->getMensagemErro()Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lmsm;->b:Lmsl;

    invoke-static {v1, v0}, Lmsl;->a(Lmsl;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lmsm;->a:Lmsk;

    invoke-interface {v1, v0}, Lmsk;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    iget-object v1, p0, Lmsm;->a:Lmsk;

    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    :goto_1
    invoke-interface {v1, v0}, Lmsk;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 103
    :cond_1
    :try_start_1
    iget-object v1, p0, Lmsm;->b:Lmsl;

    invoke-static {v1, v0}, Lmsl;->b(Lmsl;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    iget-object v1, p0, Lmsm;->a:Lmsk;

    invoke-interface {v1, v0}, Lmsk;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Lmsm;->a:Lmsk;

    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {p1}, Lmlp;->getMensagemErro()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lmsk;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 110
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    .line 111
    invoke-virtual {p1}, Lmlp;->getMensagemErro()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
