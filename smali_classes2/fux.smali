.class public Lfux;
.super Lfvu;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfuw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lfvu;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lfux;->b:Ljava/util/Vector;

    .line 23
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lfux;->b:Ljava/util/Vector;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lfuw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lfux;->b:Ljava/util/Vector;

    return-object v0
.end method

.method public a(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lfuw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    iput-object p1, p0, Lfux;->b:Ljava/util/Vector;

    .line 32
    return-void
.end method
