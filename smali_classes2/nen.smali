.class public Lnen;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lftz;",
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
    iput-object p1, p0, Lnen;->a:Lgkv;

    .line 30
    iput-object p2, p0, Lnen;->b:Landroid/app/Activity;

    .line 31
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lftz;
    .locals 2

    .prologue
    .line 43
    :try_start_0
    invoke-static {}, Lhat;->i()Lhbc;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lhbc;->a(Ljava/lang/String;)Lftz;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnen;->a([Ljava/lang/String;)Lftz;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/santander/app/MinhaConta;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lnen;->b:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lnen;->c:Landroid/app/Dialog;

    goto :goto_0
.end method

.method protected a(Lftz;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lnen;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnen;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lnen;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lnen;->c:Landroid/app/Dialog;

    .line 57
    :cond_0
    iget-object v0, p0, Lnen;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lftz;

    invoke-virtual {p0, p1}, Lnen;->a(Lftz;)V

    return-void
.end method
