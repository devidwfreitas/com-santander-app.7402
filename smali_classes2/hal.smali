.class public Lhal;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Lgzv;",
        "Ljava/lang/Void;",
        "Lgzu;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkv;


# direct methods
.method public constructor <init>(Lgkv;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lgne;-><init>()V

    .line 22
    iput-object p1, p0, Lhal;->a:Lgkv;

    .line 23
    return-void
.end method


# virtual methods
.method protected varargs a([Lgzv;)Lgzu;
    .locals 6

    .prologue
    .line 27
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 28
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Lgzu;

    invoke-static {}, Lhas;->ag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "realizarConversaoPorQrPasso1"

    const-string v5, "return"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgzu;

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, [Lgzv;

    invoke-virtual {p0, p1}, Lhal;->a([Lgzv;)Lgzu;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lgzu;)V
    .locals 1

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 34
    iget-object v0, p0, Lhal;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 36
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lgzu;

    invoke-virtual {p0, p1}, Lhal;->a(Lgzu;)V

    return-void
.end method
