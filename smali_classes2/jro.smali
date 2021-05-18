.class public Ljro;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljqm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljrn;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/app/Activity;

.field private d:Ljqk;


# direct methods
.method public constructor <init>(Ljrn;Landroid/app/Activity;Ljqk;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lgne;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Ljro;->a:Ljrn;

    .line 29
    iput-object p1, p0, Ljro;->a:Ljrn;

    .line 31
    iput-object p2, p0, Ljro;->c:Landroid/app/Activity;

    .line 32
    iput-object p3, p0, Ljro;->d:Ljqk;

    .line 33
    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljro;->a([Ljava/lang/Void;)Ljqm;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljqm;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 48
    :try_start_0
    invoke-virtual {p0}, Ljro;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    :goto_0
    return-object v0

    .line 53
    :cond_0
    iget-object v1, p0, Ljro;->d:Ljqk;

    invoke-virtual {v1}, Ljqk;->e()Ljql;

    move-result-object v1

    sget-object v2, Ljql;->TROCAR_SENHA:Ljql;

    invoke-virtual {v1, v2}, Ljql;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-static {}, Lhat;->o()Ljrl;

    move-result-object v1

    iget-object v2, p0, Ljro;->d:Ljqk;

    invoke-virtual {v1, v2}, Ljrl;->a(Ljqk;)Ljqm;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_1
    invoke-static {}, Lhat;->o()Ljrl;

    move-result-object v1

    invoke-virtual {v1}, Ljrl;->a()Ljqm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Ljro;->c:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Ljro;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Ljqm;

    invoke-virtual {p0, p1}, Ljro;->a(Ljqm;)V

    return-void
.end method

.method protected a(Ljqm;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 67
    :try_start_0
    iget-object v0, p0, Ljro;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljro;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Ljro;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Ljro;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 75
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Ljro;->c:Landroid/app/Activity;

    new-instance v2, Lfvu;

    invoke-direct {v2}, Lfvu;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 80
    :goto_1
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Ljro;->a:Ljrn;

    invoke-interface {v0, p1}, Ljrn;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method
