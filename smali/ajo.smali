.class public Lajo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "count"
    .end annotation
.end field

.field private b:Lajp;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "consolidated"
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajn;",
            ">;"
        }
    .end annotation

    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "product"
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

    iget-object v0, p0, Lajo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lajp;)V
    .locals 0

    iput-object p1, p0, Lajo;->b:Lajp;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lajo;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lajn;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lajo;->c:Ljava/util/List;

    return-void
.end method

.method public b()Lajp;
    .locals 1

    iget-object v0, p0, Lajo;->b:Lajp;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lajn;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lajo;->c:Ljava/util/List;

    return-object v0
.end method
