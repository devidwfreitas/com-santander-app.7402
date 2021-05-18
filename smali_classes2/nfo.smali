.class final Lnfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnfn;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lnfm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p1}, Lnff;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Lnfl;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {p1}, Lnff;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
