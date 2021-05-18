.class public Lbvr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/util/Set;
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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbvr;->b:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lbvr;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lbvr;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lbvr;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lbvr;->b:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public a()Lbvp;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lbvp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbvp;-><init>(Lbvr;Lbvq;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lbvr;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lbvr;->a:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public a([Ljava/lang/String;)Lbvr;
    .locals 4

    .prologue
    .line 94
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 95
    iget-object v3, p0, Lbvr;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lbvr;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lbvr;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    return-object p0
.end method
