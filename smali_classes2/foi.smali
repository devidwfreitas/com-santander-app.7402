.class public Lfoi;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfnz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lfoh;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lfoh;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lgne;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lfoi;->a:Lfoh;

    .line 25
    iput-object p1, p0, Lfoi;->c:Landroid/app/Activity;

    .line 26
    iput-object p2, p0, Lfoi;->a:Lfoh;

    .line 27
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfnz;
    .locals 4

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 43
    :try_start_0
    invoke-static {}, Lhat;->s()Lfof;

    move-result-object v1

    invoke-virtual {v1}, Lfof;->a()Lfnz;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    const-string v2, "RegistrarOptinCanalTask"

    const-string v3, "Erro ao registrar OPTIN canal"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfoi;->a([Ljava/lang/Void;)Lfnz;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 32
    :try_start_0
    iget-object v0, p0, Lfoi;->c:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lfoi;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    iget-object v1, p0, Lfoi;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegistrarOptinCanalTask.onPreExecute"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected a(Lfnz;)V
    .locals 3

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lfoi;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfoi;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lfoi;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lfoi;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    iget-object v0, p0, Lfoi;->a:Lfoh;

    invoke-interface {v0, p1}, Lfoh;->a(Ljava/lang/Object;)V

    .line 64
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    iget-object v1, p0, Lfoi;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegistrarOptinCanalTask.onPostExecute"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lfnz;

    invoke-virtual {p0, p1}, Lfoi;->a(Lfnz;)V

    return-void
.end method
