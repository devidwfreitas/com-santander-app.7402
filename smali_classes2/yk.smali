.class Lyk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lya;


# instance fields
.field final synthetic a:Lyi;


# direct methods
.method constructor <init>(Lyi;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lyk;->a:Lyi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 1

    .prologue
    .line 91
    check-cast p1, Lxx;

    .line 92
    iget-object v0, p0, Lyk;->a:Lyi;

    invoke-static {v0, p1}, Lyi;->a(Lyi;Lxx;)V

    .line 93
    return-void
.end method

.method public a(Laby;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lyk;->a:Lyi;

    invoke-virtual {v0}, Lyi;->e()Lack;

    move-result-object v0

    new-instance v1, Lyl;

    invoke-direct {v1, p0}, Lyl;-><init>(Lyk;)V

    invoke-static {v0, v1}, Laad;->a(Landroid/content/Context;Laar;)V

    .line 101
    return-void
.end method
