.class public Lfzh;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfyj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lfzi;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/app/Activity;

.field private d:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfzi;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lgne;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lfzh;->a:Lfzi;

    .line 28
    iput-object p1, p0, Lfzh;->a:Lfzi;

    .line 29
    iput-object p2, p0, Lfzh;->c:Landroid/app/Activity;

    .line 30
    iput-object p3, p0, Lfzh;->g:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfyj;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lfzh;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    :goto_0
    return-object v0

    .line 40
    :cond_0
    invoke-static {}, Lhat;->q()Lfyz;

    move-result-object v1

    iget-object v2, p0, Lfzh;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lfyz;->a(Ljava/lang/String;)Lfyj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfzh;->a([Ljava/lang/Void;)Lfyj;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Lfzh;->c:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lfzh;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Lfyj;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    :try_start_0
    iget-object v0, p0, Lfzh;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfzh;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lfzh;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lfzh;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 68
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfzh;->c:Landroid/app/Activity;

    new-instance v2, Lfvu;

    invoke-direct {v2}, Lfvu;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 73
    :goto_1
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lfzh;->a:Lfzi;

    invoke-interface {v0, p1}, Lfzi;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lfyj;

    invoke-virtual {p0, p1}, Lfzh;->a(Lfyj;)V

    return-void
.end method
