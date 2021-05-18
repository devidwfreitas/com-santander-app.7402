.class public Lgbu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgbs;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lgbt;

.field private c:Lmip;

.field private d:Lgdt;

.field private e:Lgay;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lgbt;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lgbu;->a:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Lgbu;->b:Lgbt;

    .line 34
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lgbu;->c:Lmip;

    .line 35
    new-instance v0, Lgdt;

    invoke-direct {v0, p1}, Lgdt;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lgbu;->d:Lgdt;

    .line 36
    return-void
.end method

.method static synthetic a(Lgbu;)Lgay;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lgbu;->e:Lgay;

    return-object v0
.end method

.method static synthetic a(Lgbu;Lgay;)Lgay;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lgbu;->e:Lgay;

    return-object p1
.end method

.method static synthetic b(Lgbu;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lgbu;->d()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private c()Lgbe;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lgbe;

    invoke-direct {v0}, Lgbe;-><init>()V

    .line 66
    iget-object v1, p0, Lgbu;->c:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbe;->setConnUuid(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lgbu;->c:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbe;->setTokenSessao(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lgbu;->c:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbe;->setTokenTransacao(Ljava/lang/String;)V

    .line 70
    return-object v0
.end method

.method static synthetic c(Lgbu;)Lgbt;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lgbu;->b:Lgbt;

    return-object v0
.end method

.method private d()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lgbd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget-object v0, p0, Lgbu;->e:Lgay;

    invoke-virtual {v0}, Lgay;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbd;

    .line 77
    invoke-virtual {v0}, Lgbd;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "S"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 83
    new-instance v0, Lgbd;

    invoke-direct {v0}, Lgbd;-><init>()V

    .line 84
    const-string v2, "Demais Pa\u00edses"

    invoke-virtual {v0, v2}, Lgbd;->b(Ljava/lang/String;)V

    .line 85
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lgbd;->a(Z)V

    .line 86
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lgbu;->d:Lgdt;

    new-instance v1, Lgbv;

    invoke-direct {v1, p0}, Lgbv;-><init>(Lgbu;)V

    .line 51
    invoke-direct {p0}, Lgbu;->c()Lgbe;

    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Lgdt;->a(Lgkw;Lgbe;)V

    .line 52
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iget-object v1, p0, Lgbu;->e:Lgay;

    invoke-virtual {v1}, Lgay;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 59
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 61
    iget-object v1, p0, Lgbu;->b:Lgbt;

    invoke-interface {v1, v0}, Lgbt;->b(Ljava/util/ArrayList;)V

    .line 62
    return-void
.end method
