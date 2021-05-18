.class Ldly;
.super Ljava/lang/Object;

# interfaces
.implements Ldlc;


# instance fields
.field final synthetic a:Ldlv;


# direct methods
.method constructor <init>(Ldlv;)V
    .locals 0

    iput-object p1, p0, Ldly;->a:Ldlv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldly;->a:Ldlv;

    invoke-virtual {v0, p2, p3, p4}, Ldlv;->a(ILjava/lang/Throwable;[B)V

    return-void
.end method
