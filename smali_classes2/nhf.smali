.class Lnhf;
.super Ljava/lang/Object;

# interfaces
.implements Lnik;


# instance fields
.field final synthetic a:Lnhe;


# direct methods
.method constructor <init>(Lnhe;)V
    .locals 0

    iput-object p1, p0, Lnhf;->a:Lnhe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;[B)V"
        }
    .end annotation

    iget-object v0, p0, Lnhf;->a:Lnhe;

    invoke-static {v0}, Lnhe;->a(Lnhe;)Lnhp;

    move-result-object v6

    new-instance v0, Lnhv;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lnhv;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;[B)V

    invoke-interface {v6, v0}, Lnhp;->b(Lnib;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lnhf;->a:Lnhe;

    invoke-static {v0}, Lnhe;->a(Lnhe;)Lnhp;

    move-result-object v0

    new-instance v1, Lnhu;

    invoke-direct {v1, p1, p2}, Lnhu;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lnhp;->b(Lnib;)V

    return-void
.end method
