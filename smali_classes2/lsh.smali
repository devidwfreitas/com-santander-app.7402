.class Llsh;
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
        "Lkwj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Llsg;


# direct methods
.method constructor <init>(Llsg;)V
    .locals 0

    .prologue
    .line 764
    iput-object p1, p0, Llsh;->a:Llsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkwj;Lkwj;)I
    .locals 2

    .prologue
    .line 767
    invoke-virtual {p2}, Lkwj;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lkwj;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 764
    check-cast p1, Lkwj;

    check-cast p2, Lkwj;

    invoke-virtual {p0, p1, p2}, Llsh;->a(Lkwj;Lkwj;)I

    move-result v0

    return v0
.end method
