.class final Lejr;
.super Lekn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lekn",
        "<",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lekn;


# direct methods
.method constructor <init>(Lekn;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lejr;->a:Lekn;

    invoke-direct {p0}, Lekn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lepo;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 4

    .prologue
    .line 358
    iget-object v0, p0, Lejr;->a:Lekn;

    invoke-virtual {v0, p1}, Lekn;->b(Lepo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 359
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    return-object v1
.end method

.method public bridge synthetic a(Leps;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 353
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Lejr;->a(Leps;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-void
.end method

.method public a(Leps;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 4

    .prologue
    .line 355
    iget-object v0, p0, Lejr;->a:Lekn;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lekn;->a(Leps;Ljava/lang/Object;)V

    .line 356
    return-void
.end method

.method public synthetic b(Lepo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lejr;->a(Lepo;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    return-object v0
.end method
