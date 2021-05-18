.class public Lgya;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Lgxd;",
        "Ljava/lang/Void;",
        "Lgxc;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkv;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lgkv;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lgne;-><init>()V

    .line 31
    iput-object p1, p0, Lgya;->a:Lgkv;

    .line 32
    iput-object p2, p0, Lgya;->b:Landroid/app/Activity;

    .line 33
    return-void
.end method


# virtual methods
.method protected varargs a([Lgxd;)Lgxc;
    .locals 7

    .prologue
    .line 43
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 44
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Lgxc;

    invoke-static {}, Lhas;->W()Ljava/lang/String;

    move-result-object v3

    const-string v4, "listarCampanhas"

    const-string v5, "return"

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgxc;

    .line 46
    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    check-cast p1, [Lgxd;

    invoke-virtual {p0, p1}, Lgya;->a([Lgxd;)Lgxc;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method protected a(Lgxc;)V
    .locals 2

    .prologue
    .line 52
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lgxc;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgxc;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 53
    :cond_0
    new-instance v0, Lgxc;

    invoke-direct {v0}, Lgxc;-><init>()V

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lgxc;->a(Ljava/util/List;)V

    .line 55
    iget-object v1, p0, Lgya;->a:Lgkv;

    invoke-interface {v1, v0}, Lgkv;->a(Ljava/lang/Object;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lgya;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lgxc;

    invoke-virtual {p0, p1}, Lgya;->a(Lgxc;)V

    return-void
.end method
