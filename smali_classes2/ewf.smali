.class final Lewf;
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
        "Lfam;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lewe;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lewf;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfam;Lfam;)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 82
    invoke-virtual {p2}, Lfam;->c()F

    move-result v0

    invoke-virtual {p1}, Lfam;->c()F

    move-result v1

    sub-float/2addr v0, v1

    .line 83
    float-to-double v2, v0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 79
    check-cast p1, Lfam;

    check-cast p2, Lfam;

    invoke-virtual {p0, p1, p2}, Lewf;->a(Lfam;Lfam;)I

    move-result v0

    return v0
.end method
