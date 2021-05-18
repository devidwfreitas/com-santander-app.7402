.class public Lidm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lick;
.implements Lidl;


# instance fields
.field private a:Licw;

.field private b:Lhzt;

.field private c:Lice;

.field private d:Libo;


# direct methods
.method public constructor <init>(Licw;Libo;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lidm;->a:Licw;

    .line 30
    iput-object p2, p0, Lidm;->d:Libo;

    .line 31
    new-instance v0, Licf;

    invoke-direct {v0, p0}, Licf;-><init>(Lick;)V

    iput-object v0, p0, Lidm;->c:Lice;

    .line 32
    iget-object v0, p0, Lidm;->c:Lice;

    invoke-interface {v0}, Lice;->a()V

    .line 33
    iget-object v0, p0, Lidm;->c:Lice;

    invoke-interface {p1}, Licw;->a()Libp;

    move-result-object v1

    invoke-interface {v0, v1}, Lice;->a(Libp;)V

    .line 34
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lidm;->a:Licw;

    iget-object v1, p0, Lidm;->b:Lhzt;

    invoke-interface {v0, v1}, Licw;->a(Lhzt;)V

    .line 39
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Libv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lidm;->a:Licw;

    invoke-interface {v0, p1}, Licw;->a(Ljava/util/List;)V

    .line 44
    return-void
.end method

.method public a(ZLhzt;)V
    .locals 2

    .prologue
    .line 48
    iput-object p2, p0, Lidm;->b:Lhzt;

    .line 50
    if-eqz p1, :cond_0

    iget-object v0, p0, Lidm;->d:Libo;

    invoke-virtual {v0}, Libo;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Seguros"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lidm;->a:Licw;

    invoke-interface {v0}, Licw;->b()V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lidm;->a:Licw;

    invoke-interface {v0}, Licw;->c()V

    goto :goto_0
.end method
