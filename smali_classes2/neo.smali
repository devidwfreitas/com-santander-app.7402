.class public Lneo;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Lnay;",
        "Ljava/lang/Void;",
        "Lnax;",
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
    iput-object p1, p0, Lneo;->a:Lgkv;

    .line 24
    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, [Lnay;

    invoke-virtual {p0, p1}, Lneo;->a([Lnay;)Lnax;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Lnay;)Lnax;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lneo;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 34
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Lnax;

    invoke-static {}, Lhas;->Z()Ljava/lang/String;

    move-result-object v3

    const-string v4, "generateToken"

    const-string v5, "return"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnax;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 37
    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lnax;

    invoke-virtual {p0, p1}, Lneo;->a(Lnax;)V

    return-void
.end method

.method protected a(Lnax;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Lgne;->a(Ljava/lang/Object;)V

    .line 46
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lnax;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lneo;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
