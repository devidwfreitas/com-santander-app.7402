.class final Lbmt;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lbmu;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 47
    sget-object v0, Lbmu;->MOBILE_INSTALL_EVENT:Lbmu;

    const-string v1, "MOBILE_APP_INSTALL"

    invoke-virtual {p0, v0, v1}, Lbmt;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lbmu;->CUSTOM_APP_EVENTS:Lbmu;

    const-string v1, "CUSTOM_APP_EVENTS"

    invoke-virtual {p0, v0, v1}, Lbmt;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method
