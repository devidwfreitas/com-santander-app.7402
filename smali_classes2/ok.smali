.class Lok;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnu;


# instance fields
.field final synthetic a:Loi;


# direct methods
.method constructor <init>(Loi;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lok;->a:Loi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lok;->a:Loi;

    check-cast p1, Lnr;

    invoke-static {v0, p1}, Loi;->a(Loi;Lnr;)V

    .line 137
    return-void
.end method

.method public a(Laby;)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lok;->a:Loi;

    invoke-virtual {v0}, Loi;->e()Lack;

    move-result-object v0

    new-instance v1, Lol;

    invoke-direct {v1, p0}, Lol;-><init>(Lok;)V

    invoke-static {v0, v1}, Laad;->a(Landroid/content/Context;Laar;)V

    .line 143
    return-void
.end method
