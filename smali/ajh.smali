.class public Lajh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "name"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "code"
    .end annotation
.end field

.field private c:Lajo;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "products"
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

    iget-object v0, p0, Lajh;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lajo;)V
    .locals 0

    iput-object p1, p0, Lajh;->c:Lajo;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lajh;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lajh;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lajh;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Lajo;
    .locals 1

    iget-object v0, p0, Lajh;->c:Lajo;

    return-object v0
.end method
