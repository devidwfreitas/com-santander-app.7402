.class public Lfze;
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

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfzi;Landroid/app/Activity;Ljqk;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lgne;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lfze;->a:Lfzi;

    .line 29
    iput-object p1, p0, Lfze;->a:Lfzi;

    .line 30
    iput-object p2, p0, Lfze;->c:Landroid/app/Activity;

    .line 31
    iput-object p3, p0, Lfze;->d:Ljqk;

    .line 32
    iput-object p4, p0, Lfze;->g:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfyi;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lfze;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    :goto_0
    return-object v0

    .line 42
    :cond_0
    invoke-static {}, Lhat;->q()Lfyz;

    move-result-object v1

    iget-object v2, p0, Lfze;->g:Ljava/lang/String;

    iget-object v3, p0, Lfze;->d:Ljqk;

    invoke-virtual {v3}, Ljqk;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lfyz;->a(Ljava/lang/String;Ljava/lang/String;)Lfyi;
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

    invoke-virtual {p0, p1}, Lfze;->a([Ljava/lang/Void;)Lfyi;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 53
    :try_start_0
    iget-object v0, p0, Lfze;->c:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lfze;->b:Landroid/app/Dialog;
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
    iget-object v0, p0, Lfze;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfze;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lfze;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lfze;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 70
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfze;->c:Landroid/app/Activity;

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
    iget-object v0, p0, Lfze;->a:Lfzi;

    invoke-interface {v0, p1}, Lfzi;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lfyi;

    invoke-virtual {p0, p1}, Lfze;->a(Lfyi;)V

    return-void
.end method
