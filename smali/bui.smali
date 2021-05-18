.class Lbui;
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
        "Lbul;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbug;


# direct methods
.method constructor <init>(Lbug;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lbui;->a:Lbug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbul;Lbul;)I
    .locals 2

    .prologue
    .line 169
    iget v0, p2, Lbul;->b:I

    iget v1, p1, Lbul;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 166
    check-cast p1, Lbul;

    check-cast p2, Lbul;

    invoke-virtual {p0, p1, p2}, Lbui;->a(Lbul;Lbul;)I

    move-result v0

    return v0
.end method
