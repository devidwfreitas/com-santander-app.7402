.class public Lidk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Libx;
.implements Lick;
.implements Lidj;


# instance fields
.field private a:Licx;

.field private b:Lice;

.field private c:Libw;

.field private d:Lhzt;


# direct methods
.method public constructor <init>(Licx;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lidk;->a:Licx;

    .line 35
    new-instance v0, Liby;

    invoke-direct {v0, p0, p0, p0}, Liby;-><init>(Lidj;Libx;Lick;)V

    iput-object v0, p0, Lidk;->c:Libw;

    .line 36
    new-instance v0, Licf;

    invoke-direct {v0, p0}, Licf;-><init>(Lick;)V

    iput-object v0, p0, Lidk;->b:Lice;

    .line 37
    return-void
.end method

.method private b(Libr;Z)V
    .locals 4

    .prologue
    .line 92
    invoke-virtual {p1}, Libr;->a()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 94
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libo;

    .line 96
    invoke-virtual {v0}, Libo;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const-string v2, "S"

    invoke-virtual {v0}, Libo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 100
    :cond_3
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lidk;->a:Licx;

    invoke-interface {v0}, Licx;->a()V

    .line 59
    return-void
.end method

.method public a(Lfoh;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lidk;->c:Libw;

    invoke-interface {v0, p1}, Libw;->a(Lfoh;)V

    .line 69
    return-void
.end method

.method public a(Libr;Z)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lidk;->b(Libr;Z)V

    .line 48
    iget-object v0, p0, Lidk;->a:Licx;

    invoke-interface {v0, p1}, Licx;->a(Libr;)V

    .line 49
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lidk;->a:Licx;

    invoke-interface {v0, p1}, Licx;->b(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
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
    .line 73
    return-void
.end method

.method public a(ZLhzt;)V
    .locals 2

    .prologue
    .line 78
    iput-object p2, p0, Lidk;->d:Lhzt;

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lidk;->a:Licx;

    invoke-interface {v0, p2}, Licx;->a(Lhzt;)V

    .line 83
    :cond_0
    const/4 v0, 0x0

    .line 84
    if-eqz p2, :cond_1

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->p()Liow;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {p2}, Lhzt;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 87
    :cond_1
    iget-object v1, p0, Lidk;->c:Libw;

    invoke-interface {v1, v0}, Libw;->a(Z)V

    .line 88
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lidk;->a:Licx;

    invoke-interface {v0}, Licx;->b()V

    .line 64
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lidk;->a:Licx;

    invoke-interface {v0}, Licx;->a()V

    .line 42
    iget-object v0, p0, Lidk;->b:Lice;

    invoke-interface {v0}, Lice;->a()V

    .line 43
    return-void
.end method
