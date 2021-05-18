.class interface abstract Lnfn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lnfn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lnfo;

    invoke-direct {v0}, Lnfo;-><init>()V

    sput-object v0, Lnfn;->a:Lnfn;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/util/Map;
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
.end method

.method public abstract b(Ljava/lang/Object;)Ljava/util/Map;
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
.end method
