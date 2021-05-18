.class Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lorg/simpleframework/xml/core/Parameter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 354
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;)V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 363
    return-void
.end method
