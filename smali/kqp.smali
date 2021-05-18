.class public Lkqp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "insurance"
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkrp;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "priority"
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkqq;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "coveragesInfo"
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkqe;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "assistancesInfo"
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
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lkqp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lkqp;->a:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkqq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    iput-object p1, p0, Lkqp;->c:Ljava/util/List;

    .line 39
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkqq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lkqp;->c:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkqe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lkqp;->d:Ljava/util/List;

    .line 47
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkqe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lkqp;->d:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkrp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lkqp;->b:Ljava/util/List;

    .line 55
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkrp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lkqp;->b:Ljava/util/List;

    return-object v0
.end method
