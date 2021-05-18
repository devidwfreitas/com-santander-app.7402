.class public Lnek;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Lnaw;",
        "Ljava/lang/Void;",
        "Lnav;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkv;


# direct methods
.method public constructor <init>(Lgkv;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lgne;-><init>()V

    .line 23
    iput-object p1, p0, Lnek;->a:Lgkv;

    .line 24
    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, [Lnaw;

    invoke-virtual {p0, p1}, Lnek;->a([Lnaw;)Lnav;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Lnaw;)Lnav;
    .locals 6

    .prologue
    .line 29
    :try_start_0
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 30
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Lnav;

    invoke-static {}, Lhas;->aa()Ljava/lang/String;

    move-result-object v3

    const-string v4, "autenticarQrToken"

    const-string v5, "return"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnav;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lnav;

    invoke-virtual {p0, p1}, Lnek;->a(Lnav;)V

    return-void
.end method

.method protected a(Lnav;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Lgne;->a(Ljava/lang/Object;)V

    .line 42
    if-eqz p1, :cond_0

    .line 43
    :try_start_0
    iget-object v0, p0, Lnek;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 50
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lnek;->a:Lgkv;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lgkv;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
