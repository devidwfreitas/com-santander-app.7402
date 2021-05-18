.class Ll;
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
.field final synthetic a:Lk;


# direct methods
.method constructor <init>(Lk;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ll;->a:Lk;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 65
    new-instance v0, Lm;

    invoke-direct {v0, p0}, Lm;-><init>(Ll;)V

    .line 80
    invoke-virtual {v0}, Lm;->a()Ljava/lang/Object;

    move-result-object v0

    .line 65
    check-cast v0, [B

    .line 64
    invoke-static {v1, v0}, Li;->a(Ljava/lang/Integer;[B)V

    .line 82
    sget-object v0, Lz;->g:[B

    return-object v0
.end method
