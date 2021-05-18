.class public Lnem;
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
    .line 25
    invoke-direct {p0}, Lgne;-><init>()V

    .line 26
    iput-object p1, p0, Lnem;->a:Lgkv;

    .line 27
    iput-object p2, p0, Lnem;->b:Landroid/app/Activity;

    .line 28
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lftz;
    .locals 2

    .prologue
    .line 38
    :try_start_0
    invoke-static {}, Lhat;->i()Lhbc;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lhbc;->a(Ljava/lang/String;)Lftz;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnem;->a([Ljava/lang/String;)Lftz;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lnem;->b:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lnem;->c:Landroid/app/Dialog;

    .line 33
    return-void
.end method

.method protected a(Lftz;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lnem;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnem;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lnem;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lnem;->c:Landroid/app/Dialog;

    .line 52
    :cond_0
    iget-object v0, p0, Lnem;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lftz;

    invoke-virtual {p0, p1}, Lnem;->a(Lftz;)V

    return-void
.end method
