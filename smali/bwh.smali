.class Lbwh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbpw;

.field final synthetic b:I

.field final synthetic c:Lbwg;


# direct methods
.method constructor <init>(Lbwg;Lbpw;I)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lbwh;->c:Lbwg;

    iput-object p2, p0, Lbwh;->a:Lbpw;

    iput p3, p0, Lbwh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 473
    iget-object v0, p0, Lbwh;->a:Lbpw;

    iget-object v0, v0, Lbpw;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lbwh;->a:Lbpw;

    iget-object v1, v2, Lbpw;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lbpw;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lbwh;->a:Lbpw;

    iget-object v0, v0, Lbpw;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lbwh;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lbwh;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 478
    return-void
.end method
