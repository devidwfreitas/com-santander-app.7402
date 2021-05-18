.class Lmsa;
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
        "Lmir;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lmrw;

.field final synthetic b:Lmry;


# direct methods
.method constructor <init>(Lmry;Lmrw;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lmsa;->b:Lmry;

    iput-object p2, p0, Lmsa;->a:Lmrw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 149
    check-cast p1, Lmir;

    invoke-virtual {p0, p1}, Lmsa;->a(Lmir;)V

    return-void
.end method

.method public a(Lmir;)V
    .locals 7

    .prologue
    .line 153
    :try_start_0
    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v0

    invoke-virtual {v0}, Liow;->getMsgErro()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v1

    invoke-virtual {v1}, Liow;->getCodErro()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    iget-object v0, p0, Lmsa;->b:Lmry;

    invoke-virtual {v0}, Lmry;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lmsa;->a:Lmrw;

    invoke-interface {v0}, Lmrw;->c()V

    .line 173
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lmsa;->b:Lmry;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmry;->b(Lmry;Z)Z

    .line 160
    iget-object v0, p0, Lmsa;->a:Lmrw;

    invoke-interface {v0}, Lmrw;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    iget-object v1, p0, Lmsa;->a:Lmrw;

    invoke-interface {v1, v0}, Lmrw;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 163
    :cond_1
    :try_start_1
    const-string v2, "LoginInteractorImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "codeError "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v2, "18369"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "18370"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    :cond_2
    iget-object v2, p0, Lmsa;->a:Lmrw;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "%s - %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lmrw;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 167
    :cond_3
    iget-object v2, p0, Lmsa;->a:Lmrw;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "%s - %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lmrw;->b(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
