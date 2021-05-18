.class Lblo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lbln;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lblo;->a:I

    .line 25
    sget-object v0, Lbln;->SUCCESS:Lbln;

    iput-object v0, p0, Lblo;->b:Lbln;

    return-void
.end method
