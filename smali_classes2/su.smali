.class Lsu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laar;


# instance fields
.field final synthetic a:Lst;


# direct methods
.method constructor <init>(Lst;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lsu;->a:Lst;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lsu;->a:Lst;

    iget-object v0, v0, Lst;->b:Lss;

    invoke-virtual {v0}, Lss;->a()V

    .line 166
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lsu;->a:Lst;

    iget-object v0, v0, Lst;->b:Lss;

    invoke-virtual {v0}, Lss;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->finish()V

    return-void
.end method
