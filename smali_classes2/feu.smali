.class Lfeu;
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
        "Lfdu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfdu;

.field final synthetic b:Lfet;


# direct methods
.method constructor <init>(Lfet;Lfdu;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lfeu;->b:Lfet;

    iput-object p2, p0, Lfeu;->a:Lfdu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfdu;Lfdu;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 47
    iget-object v2, p0, Lfeu;->a:Lfdu;

    invoke-static {p1, v2}, Lfet;->c(Lfdu;Lfdu;)Lfdu;

    move-result-object v2

    .line 48
    iget v2, v2, Lfdu;->a:I

    iget v3, p1, Lfdu;->a:I

    sub-int/2addr v2, v3

    .line 49
    iget-object v3, p0, Lfeu;->a:Lfdu;

    invoke-static {p2, v3}, Lfet;->c(Lfdu;Lfdu;)Lfdu;

    move-result-object v3

    .line 50
    iget v3, v3, Lfdu;->a:I

    iget v4, p2, Lfdu;->a:I

    sub-int/2addr v3, v4

    .line 52
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 54
    invoke-virtual {p1, p2}, Lfdu;->d(Lfdu;)I

    move-result v0

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    if-eqz v2, :cond_0

    .line 58
    if-nez v3, :cond_2

    move v0, v1

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    if-gez v2, :cond_3

    if-gez v3, :cond_3

    .line 63
    invoke-virtual {p1, p2}, Lfdu;->d(Lfdu;)I

    move-result v0

    goto :goto_0

    .line 64
    :cond_3
    if-lez v2, :cond_4

    if-lez v3, :cond_4

    .line 66
    invoke-virtual {p1, p2}, Lfdu;->d(Lfdu;)I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    .line 67
    :cond_4
    if-ltz v2, :cond_0

    move v0, v1

    .line 72
    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 44
    check-cast p1, Lfdu;

    check-cast p2, Lfdu;

    invoke-virtual {p0, p1, p2}, Lfeu;->a(Lfdu;Lfdu;)I

    move-result v0

    return v0
.end method
