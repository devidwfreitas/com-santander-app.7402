.class Lere;
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
        "Lerg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lerd;


# direct methods
.method constructor <init>(Lerd;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lere;->a:Lerd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lerg;Lerg;)I
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p1}, Lerg;->d()I

    move-result v0

    invoke-virtual {p2}, Lerg;->d()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 192
    check-cast p1, Lerg;

    check-cast p2, Lerg;

    invoke-virtual {p0, p1, p2}, Lere;->a(Lerg;Lerg;)I

    move-result v0

    return v0
.end method
