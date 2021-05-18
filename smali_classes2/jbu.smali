.class public Ljbu;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Ljqi;",
        "Ljava/lang/Void;",
        "Ljqj;",
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
    .line 26
    invoke-direct {p0}, Lgne;-><init>()V

    .line 27
    iput-object p1, p0, Ljbu;->a:Lgkv;

    .line 28
    iput-object p2, p0, Ljbu;->b:Landroid/app/Activity;

    .line 29
    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    check-cast p1, [Ljqi;

    invoke-virtual {p0, p1}, Ljbu;->a([Ljqi;)Ljqj;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljqi;)Ljqj;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    :try_start_0
    invoke-virtual {p0}, Ljbu;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    :goto_0
    return-object v0

    .line 43
    :cond_0
    invoke-static {}, Lhat;->a()Ljrk;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljrk;->a(Ljqi;)Ljqj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ljbu;->b:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Ljbu;->c:Landroid/app/Dialog;

    .line 34
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Ljqj;

    invoke-virtual {p0, p1}, Ljbu;->a(Ljqj;)V

    return-void
.end method

.method protected a(Ljqj;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ljbu;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljbu;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Ljbu;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 57
    :cond_0
    if-eqz p1, :cond_1

    .line 58
    iget-object v0, p0, Ljbu;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 60
    :cond_1
    return-void
.end method
