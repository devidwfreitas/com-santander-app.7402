.class public Lfog;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Lfnx;",
        "Ljava/lang/Void;",
        "Lfny;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lfoh;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/app/Activity;

.field private d:Lfnx;


# direct methods
.method public constructor <init>(Lfoh;Landroid/app/Activity;Lfnx;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lgne;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lfog;->a:Lfoh;

    .line 28
    iput-object p1, p0, Lfog;->a:Lfoh;

    .line 29
    iput-object p2, p0, Lfog;->c:Landroid/app/Activity;

    .line 30
    iput-object p3, p0, Lfog;->d:Lfnx;

    .line 31
    return-void
.end method


# virtual methods
.method protected varargs a([Lfnx;)Lfny;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lfog;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    :goto_0
    return-object v0

    .line 50
    :cond_0
    invoke-static {}, Lhat;->p()Lfoe;

    move-result-object v1

    iget-object v2, p0, Lfog;->d:Lfnx;

    invoke-virtual {v1, v2}, Lfoe;->a(Lfnx;)Lfny;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    const-string v2, "BuscarUsuarioPorCpfTask"

    const-string v3, "Erro ao acesso do canal"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Lfnx;

    invoke-virtual {p0, p1}, Lfog;->a([Lfnx;)Lfny;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p0, Lfog;->c:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lfog;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected a(Lfny;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    :try_start_0
    iget-object v0, p0, Lfog;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfog;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lfog;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lfog;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 70
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfog;->c:Landroid/app/Activity;

    new-instance v2, Lfvu;

    invoke-direct {v2}, Lfvu;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 72
    :cond_1
    iget-object v0, p0, Lfog;->a:Lfoh;

    invoke-interface {v0, p1}, Lfoh;->a(Ljava/lang/Object;)V

    .line 73
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string v1, "BuscarUsuarioPorCpfTask"

    const-string v2, "Erro ao acesso do canal"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lfny;

    invoke-virtual {p0, p1}, Lfog;->a(Lfny;)V

    return-void
.end method
