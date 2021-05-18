.class public Ljst;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgku;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljsw;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ljst;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Ljst;->c:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgku;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Ljst;->a:Ljava/util/List;

    .line 36
    return-void
.end method

.method public a(Ljsw;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Ljst;->b:Ljsw;

    .line 44
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lgku;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Ljst;->a:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljsw;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Ljst;->b:Ljsw;

    return-object v0
.end method
