.class public Ljde;
.super Lfss;
.source "SourceFile"


# instance fields
.field private a:Ljdd;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljdc;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lfwh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lfss;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfwh;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Ljde;->c:Lfwh;

    .line 42
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljdc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    iput-object p1, p0, Ljde;->b:Ljava/util/List;

    .line 34
    return-void
.end method

.method public a(Ljdd;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Ljde;->a:Ljdd;

    .line 26
    return-void
.end method

.method public e()Ljdd;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Ljde;->a:Ljdd;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljdc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Ljde;->b:Ljava/util/List;

    return-object v0
.end method

.method public g()Lfwh;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Ljde;->c:Lfwh;

    return-object v0
.end method
