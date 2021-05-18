.class public Lwq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lto;

.field private b:Ltk;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lacc;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lto;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lwq;->a:Lto;

    return-object v0
.end method

.method public a(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lwq;->d:Ljava/util/Date;

    .line 51
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lacc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    iput-object p1, p0, Lwq;->c:Ljava/util/List;

    .line 43
    return-void
.end method

.method public a(Ltk;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lwq;->b:Ltk;

    .line 35
    return-void
.end method

.method public a(Lto;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lwq;->a:Lto;

    .line 27
    return-void
.end method

.method public b()Ltk;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lwq;->b:Ltk;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lacc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lwq;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/Date;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lwq;->d:Ljava/util/Date;

    return-object v0
.end method
