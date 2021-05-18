.class Lmvz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkv",
        "<",
        "Lmrj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lmvw;

.field final synthetic b:Lmvy;


# direct methods
.method constructor <init>(Lmvy;Lmvw;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lmvz;->b:Lmvy;

    iput-object p2, p0, Lmvz;->a:Lmvw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lmrj;

    invoke-virtual {p0, p1}, Lmvz;->a(Lmrj;)V

    return-void
.end method

.method public a(Lmrj;)V
    .locals 2

    .prologue
    .line 30
    :try_start_0
    invoke-virtual {p1}, Lmrj;->a()Lmrp;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    iget-object v1, p0, Lmvz;->a:Lmvw;

    invoke-interface {v1, v0}, Lmvw;->a(Lmrp;)V

    .line 39
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lmvz;->a:Lmvw;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v0, v1}, Lmvw;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    iget-object v0, p0, Lmvz;->a:Lmvw;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v0, v1}, Lmvw;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
