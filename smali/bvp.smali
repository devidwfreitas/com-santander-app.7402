.class public final Lbvp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

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
.method private constructor <init>(Lbvr;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbvp;->b:Ljava/util/Set;

    .line 36
    invoke-static {p1}, Lbvr;->a(Lbvr;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbvp;->a:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lbvp;->b:Ljava/util/Set;

    invoke-static {p1}, Lbvr;->b(Lbvr;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lbvr;Lbvq;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lbvp;-><init>(Lbvr;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lbvp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/Set;
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
    .line 53
    iget-object v0, p0, Lbvp;->b:Ljava/util/Set;

    return-object v0
.end method
