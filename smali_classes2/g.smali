.class Lg;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lf;


# direct methods
.method constructor <init>(Lf;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lg;->a:Lf;

    .line 152
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-virtual {p0, p2}, Lg;->add(Ljava/lang/Object;)Z

    return-void
.end method
