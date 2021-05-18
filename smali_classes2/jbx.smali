.class public Ljbx;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Livb;",
        "Ljava/lang/Void;",
        "Liva;",
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
    iput-object p1, p0, Ljbx;->a:Lgkv;

    .line 29
    iput-object p2, p0, Ljbx;->b:Landroid/app/Activity;

    .line 30
    return-void
.end method


# virtual methods
.method protected varargs a([Livb;)Liva;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Ljbx;->e()Z

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

    const-class v2, Liva;

    invoke-static {}, Lhas;->ag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gerarQrConversao"

    const-string v5, "return"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liva;
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
    check-cast p1, [Livb;

    invoke-virtual {p0, p1}, Ljbx;->a([Livb;)Liva;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method protected a(Liva;)V
    .locals 1

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Ljbx;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 60
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Liva;

    invoke-virtual {p0, p1}, Ljbx;->a(Liva;)V

    return-void
.end method
