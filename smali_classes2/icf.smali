.class public Licf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lice;


# instance fields
.field private a:Lick;


# direct methods
.method public constructor <init>(Lick;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Licf;->a:Lick;

    .line 28
    return-void
.end method

.method static synthetic a(Licf;)Lick;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Licf;->a:Lick;

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
    .line 79
    new-instance v0, Licg;

    invoke-direct {v0, p0}, Licg;-><init>(Licf;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 69
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->p()Liow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Liba;

    invoke-direct {v0}, Liba;-><init>()V

    .line 71
    invoke-direct {p0}, Licf;->b()Lgkw;

    move-result-object v1

    invoke-interface {v0, v1}, Libg;->a(Lgkw;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Licf;->a:Lick;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lick;->a(ZLhzt;)V

    goto :goto_0
.end method

.method public a(Libp;)V
    .locals 6

    .prologue
    .line 32
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Libp;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    new-instance v0, Libv;

    invoke-direct {v0}, Libv;-><init>()V

    .line 39
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Libv;->a(Z)V

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Libp;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Libv;->c(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Libp;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Libv;->b(Ljava/lang/String;)V

    .line 43
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {p1}, Libp;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libs;

    .line 50
    invoke-virtual {v0}, Libs;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libs;

    .line 56
    new-instance v3, Libv;

    invoke-direct {v3}, Libv;-><init>()V

    .line 57
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Libv;->a(Z)V

    .line 58
    invoke-virtual {v0}, Libs;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Libv;->c(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Libs;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Libv;->b(Ljava/lang/String;)V

    .line 60
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    :cond_2
    iget-object v0, p0, Licf;->a:Lick;

    invoke-interface {v0, v1}, Lick;->a(Ljava/util/List;)V

    .line 65
    :cond_3
    return-void
.end method
