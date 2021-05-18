.class final Lbsr;
.super Ljava/util/HashSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 419
    const-string v0, "ads_management"

    invoke-virtual {p0, v0}, Lbsr;->add(Ljava/lang/Object;)Z

    .line 420
    const-string v0, "create_event"

    invoke-virtual {p0, v0}, Lbsr;->add(Ljava/lang/Object;)Z

    .line 421
    const-string v0, "rsvp_event"

    invoke-virtual {p0, v0}, Lbsr;->add(Ljava/lang/Object;)Z

    .line 422
    return-void
.end method
