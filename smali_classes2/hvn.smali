.class public Lhvn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhvk;


# static fields
.field private static a:Lhvk;


# instance fields
.field private b:Lhwo;

.field private c:Lhus;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lhwu;

    invoke-direct {v0}, Lhwu;-><init>()V

    iput-object v0, p0, Lhvn;->b:Lhwo;

    .line 40
    return-void
.end method

.method static synthetic a(Lhvn;)Lhus;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lhvn;->c:Lhus;

    return-object v0
.end method

.method static synthetic a(Lhvn;Lhus;)Lhus;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lhvn;->c:Lhus;

    return-object p1
.end method

.method static synthetic b(Lhvn;)Lhwo;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lhvn;->b:Lhwo;

    return-object v0
.end method

.method public static e()Lhvk;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lhvn;

    invoke-direct {v0}, Lhvn;-><init>()V

    sput-object v0, Lhvn;->a:Lhvk;

    return-object v0
.end method

.method public static f()Lhvk;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lhvn;->a:Lhvk;

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lhvn;->e()Lhvk;

    .line 35
    :cond_0
    sget-object v0, Lhvn;->a:Lhvk;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lhvn;->c:Lhus;

    invoke-virtual {v0}, Lhus;->c()I

    move-result v0

    .line 90
    iget-object v1, p0, Lhvn;->c:Lhus;

    invoke-virtual {v1}, Lhus;->b()I

    move-result v1

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    :goto_0
    if-gt v0, v1, :cond_0

    .line 93
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 96
    return-object v2
.end method

.method public a(IILhvl;)V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lhvn;->b:Lhwo;

    iget-object v1, p0, Lhvn;->c:Lhus;

    new-instance v2, Lhvq;

    invoke-direct {v2, p0, p1, p2, p3}, Lhvq;-><init>(Lhvn;IILhvl;)V

    invoke-interface {v0, p1, p2, v1, v2}, Lhwo;->a(IILhus;Lhwp;)V

    .line 85
    return-void
.end method

.method public a(Lhvm;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lhvn;->b:Lhwo;

    new-instance v1, Lhvo;

    invoke-direct {v1, p0, p1}, Lhvo;-><init>(Lhvn;Lhvm;)V

    invoke-interface {v0, v1}, Lhwo;->a(Lhwp;)V

    .line 67
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_0

    .line 103
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-object v1
.end method

.method public c()Lhxn;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lhvn;->c:Lhus;

    return-object v0
.end method

.method public d()Lhus;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lhvn;->c:Lhus;

    return-object v0
.end method
