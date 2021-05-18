.class Lt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbc",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 18
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 19
    new-instance v0, Lu;

    invoke-direct {v0, p0}, Lu;-><init>(Lt;)V

    .line 25
    invoke-virtual {v0}, Lu;->a()Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, [B

    .line 18
    invoke-static {v1, v0}, Ls;->a(Ljava/lang/Integer;[B)V

    .line 27
    invoke-static {}, Ls;->c()[B

    move-result-object v0

    return-object v0
.end method
