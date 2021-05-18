.class Lelo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leml;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leml",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lela;


# direct methods
.method constructor <init>(Lela;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lelo;->a:Lela;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    return-object v0
.end method
