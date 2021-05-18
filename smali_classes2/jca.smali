.class public Ljca;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Livg;",
        "Ljava/lang/Void;",
        "Livf;",
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
    .line 27
    invoke-direct {p0}, Lgne;-><init>()V

    .line 28
    iput-object p1, p0, Ljca;->a:Lgkv;

    .line 29
    iput-object p2, p0, Ljca;->b:Landroid/app/Activity;

    .line 30
    return-void
.end method


# virtual methods
.method protected varargs a([Livg;)Livf;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Ljca;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 47
    :goto_0
    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 45
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Livf;

    invoke-static {}, Lhas;->ag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "listarCelular"

    const-string v5, "return"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Livf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 47
    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Livg;

    invoke-virtual {p0, p1}, Ljca;->a([Livg;)Livf;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ljca;->b:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Ljca;->c:Landroid/app/Dialog;

    .line 35
    return-void
.end method

.method protected a(Livf;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ljca;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljca;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Ljca;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 57
    :cond_0
    if-eqz p1, :cond_1

    .line 58
    iget-object v0, p0, Ljca;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 60
    :cond_1
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Livf;

    invoke-virtual {p0, p1}, Ljca;->a(Livf;)V

    return-void
.end method
