.class Lxe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laar;


# instance fields
.field final synthetic a:Lxd;


# direct methods
.method constructor <init>(Lxd;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lxe;->a:Lxd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lxe;->a:Lxd;

    iget-object v0, v0, Lxd;->a:Lwx;

    invoke-static {v0}, Lwx;->a(Lwx;)V

    .line 217
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lxe;->a:Lxd;

    iget-object v0, v0, Lxd;->a:Lwx;

    invoke-static {v0}, Lwx;->g(Lwx;)V

    .line 222
    return-void
.end method
