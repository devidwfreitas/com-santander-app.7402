.class Llgl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lknx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Llgk;


# direct methods
.method constructor <init>(Llgk;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Llgl;->a:Llgk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lknx;Lknx;)I
    .locals 3

    .prologue
    .line 357
    .line 360
    invoke-virtual {p1}, Lknx;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PAGA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p1}, Lknx;->a()Ljava/util/Date;

    move-result-object v0

    .line 366
    :goto_0
    invoke-virtual {p2}, Lknx;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PAGA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    invoke-virtual {p2}, Lknx;->a()Ljava/util/Date;

    move-result-object v1

    .line 372
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 373
    invoke-virtual {v1, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    .line 375
    :goto_2
    return v0

    .line 363
    :cond_0
    invoke-virtual {p1}, Lknx;->b()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 369
    :cond_1
    invoke-virtual {p2}, Lknx;->b()Ljava/util/Date;

    move-result-object v1

    goto :goto_1

    .line 375
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 354
    check-cast p1, Lknx;

    check-cast p2, Lknx;

    invoke-virtual {p0, p1, p2}, Llgl;->a(Lknx;Lknx;)I

    move-result v0

    return v0
.end method
