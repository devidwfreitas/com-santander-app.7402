.class public Lfub;
.super Lfvu;
.source "SourceFile"


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfuc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lfvu;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfub;->b:Ljava/util/ArrayList;

    .line 22
    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lfuc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lfub;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lfuc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    iput-object p1, p0, Lfub;->b:Ljava/util/ArrayList;

    .line 30
    return-void
.end method
