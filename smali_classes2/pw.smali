.class Lpw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laar;


# instance fields
.field final synthetic a:Lpv;


# direct methods
.method constructor <init>(Lpv;)V
    .locals 0

    .prologue
    .line 1237
    iput-object p1, p0, Lpw;->a:Lpv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Lpw;->a:Lpv;

    iget-object v0, v0, Lpv;->a:Lpc;

    invoke-virtual {v0}, Lpc;->c()V

    .line 1241
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lpw;->a:Lpv;

    iget-object v0, v0, Lpv;->a:Lpc;

    invoke-static {v0}, Lpc;->an(Lpc;)V

    .line 1246
    return-void
.end method
