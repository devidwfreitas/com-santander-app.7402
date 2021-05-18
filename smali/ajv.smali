.class public Lajv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "code"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "bankCode"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "indRemaneja"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "limitShadow"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "limitMaximoCartao"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "limitMaximoCheque"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "sumTotalLimit"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "sumConsumLimit"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "adctionalSum"
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajw;",
            ">;"
        }
    .end annotation

    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "ListContracts"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lajv;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lajv;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lajw;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lajv;->j:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lajv;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lajv;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lajv;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lajv;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lajv;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lajv;->d:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lajv;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lajv;->e:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lajv;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lajv;->f:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lajv;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lajv;->g:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lajv;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lajv;->h:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lajv;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lajv;->i:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lajw;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lajv;->j:Ljava/util/List;

    return-object v0
.end method
