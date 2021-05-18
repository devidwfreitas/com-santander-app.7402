.class public Lkri;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkqg;
    .annotation runtime Leks;
        a = "canvasser"
    .end annotation
.end field

.field private b:Lkqr;
    .annotation runtime Leks;
        a = "customer"
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkrh;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "idealPlans"
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkrn;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "plans"
    .end annotation
.end field

.field private e:Lkrr;
    .annotation runtime Leks;
        a = "product"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lkqg;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lkri;->a:Lkqg;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkrh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lkri;->c:Ljava/util/List;

    .line 49
    return-void
.end method

.method public a(Lkqg;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lkri;->a:Lkqg;

    .line 33
    return-void
.end method

.method public a(Lkqr;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lkri;->b:Lkqr;

    .line 41
    return-void
.end method

.method public a(Lkrr;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lkri;->e:Lkrr;

    .line 65
    return-void
.end method

.method public b()Lkqr;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lkri;->b:Lkqr;

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkrn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    iput-object p1, p0, Lkri;->d:Ljava/util/List;

    .line 57
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkrh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lkri;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkrn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lkri;->d:Ljava/util/List;

    return-object v0
.end method

.method public e()Lkrr;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lkri;->e:Lkrr;

    return-object v0
.end method
