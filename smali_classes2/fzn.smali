.class public Lfzn;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfyi;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lfzi;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/app/Activity;

.field private d:Ljqk;


# direct methods
.method public constructor <init>(Lfzi;Landroid/app/Activity;Ljqk;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lgne;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lfzn;->a:Lfzi;

    .line 28
    iput-object p1, p0, Lfzn;->a:Lfzi;

    .line 29
    iput-object p2, p0, Lfzn;->c:Landroid/app/Activity;

    .line 30
    iput-object p3, p0, Lfzn;->d:Ljqk;

    .line 31
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfyi;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lfzn;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    :goto_0
    return-object v0

    .line 39
    :cond_0
    iget-object v1, p0, Lfzn;->d:Ljqk;

    invoke-virtual {v1}, Ljqk;->a()Ljava/lang/String;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lfzn;->d:Ljqk;

    invoke-virtual {v2}, Ljqk;->b()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {}, Lhat;->q()Lfyz;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lfyz;->b(Ljava/lang/String;Ljava/lang/String;)Lfyi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfzn;->a([Ljava/lang/Void;)Lfyi;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 53
    :try_start_0
    iget-object v0, p0, Lfzn;->c:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lfzn;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Lfyi;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    :try_start_0
    iget-object v0, p0, Lfzn;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfzn;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lfzn;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lfzn;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 70
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfzn;->c:Landroid/app/Activity;

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
    :cond_1
    iget-object v0, p0, Lfzn;->a:Lfzi;

    invoke-interface {v0, p1}, Lfzi;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lfyi;

    invoke-virtual {p0, p1}, Lfzn;->a(Lfyi;)V

    return-void
.end method
