.class public Ljrp;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljqj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljrn;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljrn;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lgne;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Ljrp;->a:Ljrn;

    .line 27
    iput-object p1, p0, Ljrp;->a:Ljrn;

    .line 28
    iput-object p2, p0, Ljrp;->c:Landroid/app/Activity;

    .line 29
    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljrp;->a([Ljava/lang/Void;)Ljqj;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljqj;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Ljrp;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    :goto_0
    return-object v0

    .line 50
    :cond_0
    invoke-static {}, Lhat;->a()Ljrk;

    move-result-object v1

    invoke-virtual {v1}, Ljrk;->a()Ljqj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 35
    :try_start_0
    iget-object v0, p0, Ljrp;->c:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Ljrp;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Ljqj;

    invoke-virtual {p0, p1}, Ljrp;->a(Ljqj;)V

    return-void
.end method

.method protected a(Ljqj;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    :try_start_0
    iget-object v0, p0, Ljrp;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljrp;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Ljrp;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Ljrp;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 71
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Ljrp;->c:Landroid/app/Activity;

    new-instance v2, Lfvu;

    invoke-direct {v2}, Lfvu;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 74
    :cond_1
    iget-object v0, p0, Ljrp;->a:Ljrn;

    invoke-interface {v0, p1}, Ljrn;->a(Ljava/lang/Object;)V

    .line 75
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
.end method
