.class public Lkrg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lktg;
    .annotation runtime Leks;
        a = "altairMessage"
    .end annotation
.end field

.field private b:Lkra;
    .annotation runtime Leks;
        a = "getDetails"
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkqv;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "proposals"
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkrc;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "beneficiaries"
    .end annotation
.end field

.field private e:Lkqt;
    .annotation runtime Leks;
        a = "customer"
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lksd;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "creditCards"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lksd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lkrg;->f:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lksd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    iput-object p1, p0, Lkrg;->f:Ljava/util/List;

    .line 43
    return-void
.end method

.method public a(Lkqt;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lkrg;->e:Lkqt;

    .line 51
    return-void
.end method

.method public a(Lkra;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lkrg;->b:Lkra;

    .line 67
    return-void
.end method

.method public a(Lktg;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lkrg;->a:Lktg;

    .line 59
    return-void
.end method

.method public b()Lkqt;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lkrg;->e:Lkqt;

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkqv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    iput-object p1, p0, Lkrg;->c:Ljava/util/List;

    .line 75
    return-void
.end method

.method public c()Lktg;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lkrg;->a:Lktg;

    return-object v0
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkrc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    iput-object p1, p0, Lkrg;->d:Ljava/util/List;

    .line 83
    return-void
.end method

.method public d()Lkra;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lkrg;->b:Lkra;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkqv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lkrg;->c:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkrc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lkrg;->d:Ljava/util/List;

    return-object v0
.end method
