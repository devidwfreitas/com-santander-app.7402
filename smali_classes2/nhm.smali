.class Lnhm;
.super Ljava/lang/Object;

# interfaces
.implements Lnik;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lnhg;


# direct methods
.method constructor <init>(Lnhg;I)V
    .locals 0

    iput-object p1, p0, Lnhm;->b:Lnhg;

    iput p2, p0, Lnhm;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;[B)V
    .locals 2
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

    iget-object v0, p0, Lnhm;->b:Lnhg;

    invoke-static {v0}, Lnhg;->a(Lnhg;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iget v1, p0, Lnhm;->a:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnhm;->b:Lnhg;

    invoke-static {v0}, Lnhg;->g(Lnhg;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lnhm;->b:Lnhg;

    invoke-static {v0}, Lnhg;->a(Lnhg;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iget v1, p0, Lnhm;->a:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
