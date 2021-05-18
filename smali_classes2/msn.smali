.class Lmsn;
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
.field final synthetic a:Lmsj;

.field final synthetic b:Lmsl;


# direct methods
.method constructor <init>(Lmsl;Lmsj;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lmsn;->b:Lmsl;

    iput-object p2, p0, Lmsn;->a:Lmsj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 144
    check-cast p1, Lmlp;

    invoke-virtual {p0, p1}, Lmsn;->a(Lmlp;)V

    return-void
.end method

.method public a(Lmlp;)V
    .locals 3

    .prologue
    .line 148
    :try_start_0
    invoke-virtual {p1}, Lmlp;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lmsn;->b:Lmsl;

    iget-object v1, p0, Lmsn;->b:Lmsl;

    invoke-static {v1, p1}, Lmsl;->b(Lmsl;Lmlp;)Lmrk;

    move-result-object v1

    invoke-static {v0, v1}, Lmsl;->a(Lmsl;Lmrk;)Lmrk;

    .line 150
    iget-object v0, p0, Lmsn;->a:Lmsj;

    iget-object v1, p0, Lmsn;->b:Lmsl;

    invoke-static {v1}, Lmsl;->a(Lmsl;)Lmrk;

    move-result-object v1

    invoke-interface {v0, v1}, Lmsj;->a(Lmrk;)V

    .line 158
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lmsn;->a:Lmsj;

    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {p1}, Lmlp;->getMensagemErro()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lmsj;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    iget-object v1, p0, Lmsn;->a:Lmsj;

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    :goto_1
    invoke-interface {v1, v0}, Lmsj;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    .line 156
    invoke-virtual {p1}, Lmlp;->getMensagemErro()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
