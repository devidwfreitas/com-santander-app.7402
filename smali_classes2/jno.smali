.class public Ljno;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljnm;


# instance fields
.field private a:Ljnc;

.field private b:Ljoh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->z()Ljnc;

    move-result-object v0

    iput-object v0, p0, Ljno;->a:Ljnc;

    .line 17
    invoke-static {}, Ljoq;->a()Ljoh;

    move-result-object v0

    iput-object v0, p0, Ljno;->b:Ljoh;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Ljnn;)V
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Ljno;->a:Ljnc;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljnb;

    const-string v1, "LojaHome is null"

    invoke-direct {v0, v1}, Ljnb;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljnn;->a(Ljnb;)V

    .line 39
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Ljno;->b:Ljoh;

    iget-object v1, p0, Ljno;->a:Ljnc;

    invoke-virtual {v1}, Ljnc;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljnp;

    invoke-direct {v2, p0, p1}, Ljnp;-><init>(Ljno;Ljnn;)V

    invoke-interface {v0, v1, v2}, Ljoh;->a(Ljava/lang/String;Ljok;)V

    goto :goto_0
.end method
