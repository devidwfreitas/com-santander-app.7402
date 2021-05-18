.class Lmwa;
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
        "Lmrn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lmvx;

.field final synthetic b:Lmvy;


# direct methods
.method constructor <init>(Lmvy;Lmvx;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lmwa;->b:Lmvy;

    iput-object p2, p0, Lmwa;->a:Lmvx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Lmrn;

    invoke-virtual {p0, p1}, Lmwa;->a(Lmrn;)V

    return-void
.end method

.method public a(Lmrn;)V
    .locals 2

    .prologue
    .line 50
    :try_start_0
    invoke-virtual {p1}, Lmrn;->a()Ljava/util/List;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lmwa;->a:Lmvx;

    invoke-interface {v1, v0}, Lmvx;->a(Ljava/util/List;)V

    .line 59
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lmwa;->a:Lmvx;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v0, v1}, Lmvx;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    iget-object v0, p0, Lmwa;->a:Lmvx;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v0, v1}, Lmvx;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
