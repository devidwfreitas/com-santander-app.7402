.class public Lfsx;
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
            "Lfuu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lfvu;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lfsx;->b:Ljava/util/Vector;

    .line 24
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, v0}, Lfsx;->a(Ljava/util/Vector;)V

    .line 25
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
            "Lfuu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lfsx;->b:Ljava/util/Vector;

    return-object v0
.end method

.method public a(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lfuu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    iput-object p1, p0, Lfsx;->b:Ljava/util/Vector;

    .line 33
    return-void
.end method
