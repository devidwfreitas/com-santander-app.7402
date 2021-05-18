.class public Lnhv;
.super Lnib;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnib",
        "<",
        "Lniz;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;[B)V
    .locals 1
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

    const-class v0, Lniz;

    invoke-direct {p0, v0}, Lnib;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lnhv;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p2, p0, Lnhv;->b:Ljava/lang/String;

    if-eqz p2, :cond_0

    iput p3, p0, Lnhv;->c:I

    if-eqz p3, :cond_0

    iput-object p4, p0, Lnhv;->d:Ljava/util/Map;

    if-eqz p4, :cond_0

    iput-object p5, p0, Lnhv;->e:[B

    if-nez p5, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/EventListener;)V
    .locals 0

    check-cast p1, Lniz;

    invoke-virtual {p0, p1}, Lnhv;->a(Lniz;)V

    return-void
.end method

.method public a(Lniz;)V
    .locals 6

    iget-object v1, p0, Lnhv;->a:Ljava/lang/String;

    iget-object v2, p0, Lnhv;->b:Ljava/lang/String;

    iget v3, p0, Lnhv;->c:I

    iget-object v4, p0, Lnhv;->d:Ljava/util/Map;

    iget-object v5, p0, Lnhv;->e:[B

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lniz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;[B)V

    return-void
.end method
