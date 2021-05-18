.class Lmpg;
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
        "Lmld;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lmpf;


# direct methods
.method constructor <init>(Lmpf;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lmpg;->a:Lmpf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmld;Lmld;)I
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p1}, Lmld;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lmld;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lmld;

    check-cast p2, Lmld;

    invoke-virtual {p0, p1, p2}, Lmpg;->a(Lmld;Lmld;)I

    move-result v0

    return v0
.end method
