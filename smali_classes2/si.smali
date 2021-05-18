.class Lsi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laar;


# instance fields
.field final synthetic a:Lsh;


# direct methods
.method constructor <init>(Lsh;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lsi;->a:Lsh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lsi;->a:Lsh;

    iget-object v0, v0, Lsh;->b:Lrz;

    invoke-static {v0}, Lrz;->e(Lrz;)V

    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lsi;->a:Lsh;

    iget-object v0, v0, Lsh;->b:Lrz;

    invoke-virtual {v0}, Lrz;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->onBackPressed()V

    return-void
.end method
