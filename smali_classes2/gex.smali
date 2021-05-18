.class public Lgex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgev;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgex;->b:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgev;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    iput-object p1, p0, Lgex;->a:Ljava/util/List;

    .line 33
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lgex;->b:Z

    .line 25
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lgex;->b:Z

    return v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lgev;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lgex;->a:Ljava/util/List;

    return-object v0
.end method
