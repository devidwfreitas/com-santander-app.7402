.class final Lbzu;
.super Ljava/util/HashSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 413
    const v0, 0x14cc4b    # 1.909996E-39f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbzu;->add(Ljava/lang/Object;)Z

    .line 414
    const v0, 0x14cc4d    # 1.909999E-39f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbzu;->add(Ljava/lang/Object;)Z

    .line 415
    const v0, 0x14cc56

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbzu;->add(Ljava/lang/Object;)Z

    .line 416
    const v0, 0x14cc59

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbzu;->add(Ljava/lang/Object;)Z

    .line 417
    const v0, 0x14cc61

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbzu;->add(Ljava/lang/Object;)Z

    .line 418
    return-void
.end method
