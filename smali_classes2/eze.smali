.class public final Leze;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lett;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Leqo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lett;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lett;",
            "Ljava/util/List",
            "<[",
            "Leqo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Leze;->a:Lett;

    .line 34
    iput-object p2, p0, Leze;->b:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method public a()Lett;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Leze;->a:Lett;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Leqo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Leze;->b:Ljava/util/List;

    return-object v0
.end method
