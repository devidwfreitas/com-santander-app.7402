.class Lwz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laar;


# instance fields
.field final synthetic a:Lwy;


# direct methods
.method constructor <init>(Lwy;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lwz;->a:Lwy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lwz;->a:Lwy;

    iget-object v0, v0, Lwy;->a:Lwx;

    invoke-static {v0}, Lwx;->b(Lwx;)V

    .line 171
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lwz;->a:Lwy;

    iget-object v0, v0, Lwy;->a:Lwx;

    invoke-virtual {v0}, Lwx;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->onBackPressed()V

    .line 176
    return-void
.end method
