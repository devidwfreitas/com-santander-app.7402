.class Lirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llt;


# instance fields
.field final synthetic a:Lird;


# direct methods
.method constructor <init>(Lird;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lirk;->a:Lird;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 2

    .prologue
    .line 862
    check-cast p1, Ltq;

    .line 863
    invoke-virtual {p1}, Ltq;->b()Lsx;

    move-result-object v0

    invoke-virtual {v0}, Lsx;->a()Ljava/lang/Boolean;

    move-result-object v0

    .line 865
    iget-object v1, p0, Lirk;->a:Lird;

    invoke-static {v1}, Lird;->a(Lird;)Lirb;

    move-result-object v1

    invoke-interface {v1}, Lirb;->ah()Lgwt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgwt;->a(Ljava/lang/Boolean;)V

    .line 866
    return-void
.end method

.method public a(Laby;)V
    .locals 2

    .prologue
    .line 869
    iget-object v0, p0, Lirk;->a:Lird;

    invoke-static {v0}, Lird;->a(Lird;)Lirb;

    move-result-object v0

    invoke-interface {v0}, Lirb;->ah()Lgwt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgwt;->a(Ljava/lang/Boolean;)V

    .line 870
    return-void
.end method
