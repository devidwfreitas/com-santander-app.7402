.class Lol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laar;


# instance fields
.field final synthetic a:Lok;


# direct methods
.method constructor <init>(Lok;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lol;->a:Lok;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lol;->a:Lok;

    iget-object v0, v0, Lok;->a:Loi;

    invoke-static {v0}, Loi;->a(Loi;)V

    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lol;->a:Lok;

    iget-object v0, v0, Lok;->a:Loi;

    invoke-virtual {v0}, Loi;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->onBackPressed()V

    return-void
.end method
