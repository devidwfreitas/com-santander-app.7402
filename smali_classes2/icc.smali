.class public Licc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Licb;


# instance fields
.field private a:Licj;


# direct methods
.method public constructor <init>(Licj;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Licc;->a:Licj;

    .line 23
    return-void
.end method

.method static synthetic a(Licc;)Licj;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Licc;->a:Licj;

    return-object v0
.end method

.method private b()Lgkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgkw",
            "<",
            "Lhzt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Licd;

    invoke-direct {v0, p0}, Licd;-><init>(Licc;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 34
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->l()Lmwx;

    move-result-object v0

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Liba;

    invoke-direct {v0}, Liba;-><init>()V

    .line 36
    invoke-direct {p0}, Licc;->b()Lgkw;

    move-result-object v1

    invoke-interface {v0, v1}, Libg;->a(Lgkw;)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Licc;->a:Licj;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Licj;->a(ZLhzt;)V

    goto :goto_0
.end method

.method public a(Libo;)V
    .locals 1

    .prologue
    .line 27
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Libo;->f()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Licc;->a:Licj;

    invoke-interface {v0, p1}, Licj;->a(Libo;)V

    .line 30
    :cond_0
    return-void
.end method
