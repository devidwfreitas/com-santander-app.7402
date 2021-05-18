.class public Lnel;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfwx;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkv;

.field private b:Landroid/app/Activity;

.field private c:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lgkv;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lgne;-><init>()V

    .line 29
    iput-object p1, p0, Lnel;->a:Lgkv;

    .line 30
    iput-object p2, p0, Lnel;->b:Landroid/app/Activity;

    .line 31
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfwx;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lnel;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-static {}, Lhat;->r()Lhbn;

    move-result-object v1

    invoke-virtual {v1}, Lhbn;->a()Lfwx;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnel;->a([Ljava/lang/Void;)Lfwx;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lcom/santander/app/MinhaConta;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 38
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnel;->b:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lnel;->c:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Lfwx;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    :try_start_0
    iget-object v0, p0, Lnel;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnel;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lnel;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lnel;->c:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lfwx;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    :cond_1
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lnel;->b:Landroid/app/Activity;

    new-instance v2, Lfvu;

    invoke-direct {v2}, Lfvu;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 75
    :goto_1
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lnel;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lfwx;

    invoke-virtual {p0, p1}, Lnel;->a(Lfwx;)V

    return-void
.end method
