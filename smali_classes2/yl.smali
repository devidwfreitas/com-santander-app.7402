.class Lyl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laar;


# instance fields
.field final synthetic a:Lyk;


# direct methods
.method constructor <init>(Lyk;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lyl;->a:Lyk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lyl;->a:Lyk;

    iget-object v0, v0, Lyk;->a:Lyi;

    invoke-static {v0}, Lyi;->a(Lyi;)V

    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lyl;->a:Lyk;

    iget-object v0, v0, Lyk;->a:Lyi;

    invoke-virtual {v0}, Lyi;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->onBackPressed()V

    return-void
.end method
