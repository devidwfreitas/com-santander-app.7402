.class public final Lbvs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
.method private constructor <init>(Lbvu;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbvs;->d:Ljava/util/Set;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbvs;->e:Ljava/util/Set;

    .line 39
    invoke-static {p1}, Lbvu;->a(Lbvu;)I

    move-result v0

    iput v0, p0, Lbvs;->a:I

    .line 40
    invoke-static {p1}, Lbvu;->b(Lbvu;)I

    move-result v0

    iput v0, p0, Lbvs;->b:I

    .line 41
    invoke-static {p1}, Lbvu;->c(Lbvu;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbvs;->c:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lbvs;->d:Ljava/util/Set;

    invoke-static {p1}, Lbvu;->d(Lbvu;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 43
    iget-object v0, p0, Lbvs;->e:Ljava/util/Set;

    invoke-static {p1}, Lbvu;->e(Lbvu;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lbvu;Lbvt;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lbvs;-><init>(Lbvu;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lbvs;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lbvs;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lbvs;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/Set;
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
    .line 79
    iget-object v0, p0, Lbvs;->d:Ljava/util/Set;

    return-object v0
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
    .line 87
    iget-object v0, p0, Lbvs;->e:Ljava/util/Set;

    return-object v0
.end method
