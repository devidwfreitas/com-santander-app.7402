.class Lxv;
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
        "Lsy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lxq;


# direct methods
.method constructor <init>(Lxq;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lxv;->a:Lxq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lsy;Lsy;)I
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p2}, Lsy;->i()Lsw;

    move-result-object v0

    invoke-virtual {v0}, Lsw;->a()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1}, Lsy;->i()Lsw;

    move-result-object v1

    invoke-virtual {v1}, Lsw;->a()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 138
    check-cast p1, Lsy;

    check-cast p2, Lsy;

    invoke-virtual {p0, p1, p2}, Lxv;->a(Lsy;Lsy;)I

    move-result v0

    return v0
.end method
