.class Lk;
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


# instance fields
.field final synthetic a:Li;


# direct methods
.method constructor <init>(Li;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lk;->a:Li;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 61
    new-instance v0, Ll;

    invoke-direct {v0, p0}, Ll;-><init>(Lk;)V

    .line 85
    invoke-virtual {v0}, Ll;->a()Ljava/lang/Object;

    move-result-object v0

    .line 61
    check-cast v0, [B

    .line 60
    invoke-static {v1, v0}, Li;->a(Ljava/lang/Integer;[B)V

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method
