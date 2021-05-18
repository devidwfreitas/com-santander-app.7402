.class public Lgyb;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Lgxf;",
        "Ljava/lang/Void;",
        "Lgxe;",
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
    iput-object p1, p0, Lgyb;->a:Lgkv;

    .line 30
    iput-object p2, p0, Lgyb;->b:Landroid/app/Activity;

    .line 31
    return-void
.end method


# virtual methods
.method protected varargs a([Lgxf;)Lgxe;
    .locals 6

    .prologue
    .line 36
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 37
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Lgxe;

    invoke-static {}, Lhas;->W()Ljava/lang/String;

    move-result-object v3

    const-string v4, "visualizacaoCampanha"

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgxe;

    .line 39
    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Lgxf;

    invoke-virtual {p0, p1}, Lgyb;->a([Lgxf;)Lgxe;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Lgne;->a()V

    .line 45
    return-void
.end method

.method protected a(Lgxe;)V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lgne;->a(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lgyb;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lgxe;

    invoke-virtual {p0, p1}, Lgyb;->a(Lgxe;)V

    return-void
.end method
