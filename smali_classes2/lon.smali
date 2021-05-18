.class Llon;
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
        "Lkrn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lloi;


# direct methods
.method constructor <init>(Lloi;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Llon;->a:Lloi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkrn;Lkrn;)I
    .locals 3

    .prologue
    .line 297
    invoke-virtual {p1}, Lkrn;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 298
    invoke-virtual {p2}, Lkrn;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 300
    invoke-virtual {p1}, Lkrn;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 301
    invoke-virtual {p1}, Lkrn;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 304
    :cond_0
    invoke-virtual {p2}, Lkrn;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 305
    invoke-virtual {p2}, Lkrn;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 308
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 293
    check-cast p1, Lkrn;

    check-cast p2, Lkrn;

    invoke-virtual {p0, p1, p2}, Llon;->a(Lkrn;Lkrn;)I

    move-result v0

    return v0
.end method
