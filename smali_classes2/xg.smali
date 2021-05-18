.class Lxg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laar;


# instance fields
.field final synthetic a:Lxf;


# direct methods
.method constructor <init>(Lxf;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lxg;->a:Lxf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lxg;->a:Lxf;

    iget-object v0, v0, Lxf;->a:Lwx;

    invoke-static {v0}, Lwx;->b(Lwx;)V

    .line 252
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method
