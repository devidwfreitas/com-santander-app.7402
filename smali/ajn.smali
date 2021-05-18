.class public Lajn;
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
        a = "name"
    .end annotation
.end field

.field private c:Lajr;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "subProducts"
    .end annotation
.end field

.field private d:Lajk;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "contract"
    .end annotation
.end field

.field private e:Lajf;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "balance"
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

    iget-object v0, p0, Lajn;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lajf;)V
    .locals 0

    iput-object p1, p0, Lajn;->e:Lajf;

    return-void
.end method

.method public a(Lajk;)V
    .locals 0

    iput-object p1, p0, Lajn;->d:Lajk;

    return-void
.end method

.method public a(Lajr;)V
    .locals 0

    iput-object p1, p0, Lajn;->c:Lajr;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lajn;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Lajr;
    .locals 1

    iget-object v0, p0, Lajn;->c:Lajr;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lajn;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Lajk;
    .locals 1

    iget-object v0, p0, Lajn;->d:Lajk;

    return-object v0
.end method

.method public d()Lajf;
    .locals 1

    iget-object v0, p0, Lajn;->e:Lajf;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lajn;->b:Ljava/lang/String;

    return-object v0
.end method
