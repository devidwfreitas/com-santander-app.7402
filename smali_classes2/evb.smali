.class final Levb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Leva;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leuz;)V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0}, Levb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leva;Leva;)I
    .locals 2

    .prologue
    .line 436
    invoke-virtual {p1}, Leva;->c()I

    move-result v0

    invoke-virtual {p2}, Leva;->c()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 432
    check-cast p1, Leva;

    check-cast p2, Leva;

    invoke-virtual {p0, p1, p2}, Levb;->a(Leva;Leva;)I

    move-result v0

    return v0
.end method
