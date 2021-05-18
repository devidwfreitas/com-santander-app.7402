.class public Lbvj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/location/Location;

.field private final b:Lbvn;

.field private final c:Lbvm;

.field private final d:I

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lbvl;)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbvj;->e:Ljava/util/Set;

    .line 75
    invoke-static {p1}, Lbvl;->a(Lbvl;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lbvj;->a:Landroid/location/Location;

    .line 76
    invoke-static {p1}, Lbvl;->b(Lbvl;)Lbvn;

    move-result-object v0

    iput-object v0, p0, Lbvj;->b:Lbvn;

    .line 77
    invoke-static {p1}, Lbvl;->c(Lbvl;)Lbvm;

    move-result-object v0

    iput-object v0, p0, Lbvj;->c:Lbvm;

    .line 78
    invoke-static {p1}, Lbvl;->d(Lbvl;)I

    move-result v0

    iput v0, p0, Lbvj;->d:I

    .line 79
    iget-object v0, p0, Lbvj;->e:Ljava/util/Set;

    invoke-static {p1}, Lbvl;->e(Lbvl;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lbvl;Lbvk;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lbvj;-><init>(Lbvl;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lbvj;->a:Landroid/location/Location;

    return-object v0
.end method

.method public b()Lbvn;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lbvj;->b:Lbvn;

    return-object v0
.end method

.method public c()Lbvm;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lbvj;->c:Lbvm;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lbvj;->d:I

    return v0
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lbvj;->e:Ljava/util/Set;

    return-object v0
.end method
