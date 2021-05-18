.class Lh;
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
    iput-object p1, p0, Lh;->a:Lf;

    .line 155
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-virtual {p0, p2}, Lh;->add(Ljava/lang/Object;)Z

    return-void
.end method
