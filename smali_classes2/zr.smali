.class Lzr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laar;


# instance fields
.field final synthetic a:Lzp;


# direct methods
.method constructor <init>(Lzp;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lzr;->a:Lzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lzr;->a:Lzp;

    invoke-static {v0}, Lzp;->b(Lzp;)V

    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lzr;->a:Lzp;

    invoke-virtual {v0}, Lzp;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->finish()V

    return-void
.end method
