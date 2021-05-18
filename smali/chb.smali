.class public Lchb;
.super Lcgo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcgo",
        "<",
        "Lcit;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcgo;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcgo;-><init>(Ljava/util/List;)V

    .line 25
    return-void
.end method

.method public varargs constructor <init>([Lcit;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcgo;-><init>([Lcio;)V

    .line 29
    return-void
.end method


# virtual methods
.method public a(Lchv;)Lcom/github/mikephil/charting/data/Entry;
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p1}, Lchv;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lchb;->a(I)Lcio;

    move-result-object v0

    check-cast v0, Lcit;

    invoke-virtual {p1}, Lchv;->a()F

    move-result v1

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcit;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lchb;->j:Ljava/util/List;

    return-object v0
.end method

.method public varargs a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lchb;->j:Ljava/util/List;

    .line 47
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lchb;->j:Ljava/util/List;

    .line 38
    return-void
.end method
