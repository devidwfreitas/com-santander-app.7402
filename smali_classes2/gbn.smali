.class Lgbn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lgbl;


# direct methods
.method constructor <init>(Lgbl;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lgbn;->a:Lgbl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 122
    check-cast p1, Lgbc;

    .line 124
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lgbc;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :try_start_0
    iget-object v0, p0, Lgbn;->a:Lgbl;

    invoke-static {v0}, Lgbl;->a(Lgbl;)Lgbk;

    move-result-object v0

    invoke-interface {v0, p1}, Lgbk;->a(Lgbc;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :cond_1
    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lgbn;->a:Lgbl;

    invoke-static {v0}, Lgbl;->a(Lgbl;)Lgbk;

    move-result-object v0

    invoke-interface {v0, p1}, Lgbk;->b(Lgbc;)V

    goto :goto_0
.end method
