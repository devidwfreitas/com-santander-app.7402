.class public Lbg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbb;
.implements Lbd;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbg;->a:Ljava/util/Map;

    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;[B)V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lbg;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public a(Ljava/lang/Integer;)[B
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lbg;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
