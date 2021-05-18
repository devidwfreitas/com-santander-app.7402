.class public Ljbw;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Liuy;",
        "Ljava/lang/Void;",
        "Liux;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkv;


# direct methods
.method public constructor <init>(Lgkv;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lgne;-><init>()V

    .line 24
    iput-object p1, p0, Ljbw;->a:Lgkv;

    .line 25
    return-void
.end method


# virtual methods
.method protected varargs a([Liuy;)Liux;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 30
    :try_start_0
    invoke-virtual {p0}, Ljbw;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 38
    :goto_0
    return-object v0

    .line 34
    :cond_0
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 35
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Liux;

    invoke-static {}, Lhas;->aa()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cancelarQrToken"

    const-string v5, "return"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liux;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 38
    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, [Liuy;

    invoke-virtual {p0, p1}, Ljbw;->a([Liuy;)Liux;

    move-result-object v0

    return-object v0
.end method

.method protected a(Liux;)V
    .locals 2

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .line 46
    :try_start_0
    iget-object v0, p0, Ljbw;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Liux;

    invoke-virtual {p0, p1}, Ljbw;->a(Liux;)V

    return-void
.end method
