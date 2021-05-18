.class public Lhar;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Lgzx;",
        "Ljava/lang/Void;",
        "Lgzw;",
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
    iput-object p1, p0, Lhar;->a:Lgkv;

    .line 24
    return-void
.end method


# virtual methods
.method protected varargs a([Lgzx;)Lgzw;
    .locals 6

    .prologue
    .line 28
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 29
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Lgzw;

    .line 30
    invoke-static {}, Lhas;->aa()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sincronizarQrToken"

    const-string v5, "return"

    .line 29
    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgzw;

    .line 31
    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, [Lgzx;

    invoke-virtual {p0, p1}, Lhar;->a([Lgzx;)Lgzw;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lgzw;)V
    .locals 1

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lhar;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 39
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lgzw;

    invoke-virtual {p0, p1}, Lhar;->a(Lgzw;)V

    return-void
.end method
