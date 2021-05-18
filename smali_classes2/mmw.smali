.class Lmmw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lmmv;


# direct methods
.method constructor <init>(Lmmv;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lmmw;->a:Lmmv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    check-cast p1, Lmkx;

    .line 74
    invoke-virtual {p1}, Lmkx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->y(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmkx;->a(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lmkx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->y(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmkx;->b(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lmkx;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->y(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmkx;->c(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lmkx;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->y(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmkx;->d(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lmmw;->a:Lmmv;

    invoke-static {v0}, Lmmv;->a(Lmmv;)Lmmu;

    move-result-object v0

    invoke-interface {v0, p1}, Lmmu;->a(Lmkx;)V

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lmmw;->a:Lmmv;

    invoke-static {v0}, Lmmv;->a(Lmmv;)Lmmu;

    move-result-object v0

    invoke-interface {v0}, Lmmu;->a()V

    goto :goto_0
.end method
