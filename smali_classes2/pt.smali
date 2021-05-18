.class Lpt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lot;


# instance fields
.field final synthetic a:Lpc;


# direct methods
.method constructor <init>(Lpc;)V
    .locals 0

    .prologue
    .line 1156
    iput-object p1, p0, Lpt;->a:Lpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 2

    .prologue
    .line 1160
    iget-object v0, p0, Lpt;->a:Lpc;

    new-instance v1, Lom;

    invoke-direct {v1, p1}, Lom;-><init>(Labv;)V

    invoke-static {v0, v1}, Lpc;->a(Lpc;Lom;)Lom;

    .line 1161
    iget-object v0, p0, Lpt;->a:Lpc;

    invoke-virtual {v0}, Lpc;->c()V

    .line 1162
    return-void
.end method

.method public a(Laby;)V
    .locals 2

    .prologue
    .line 1166
    iget-object v0, p0, Lpt;->a:Lpc;

    invoke-virtual {v0}, Lpc;->e()Lack;

    move-result-object v0

    new-instance v1, Lpu;

    invoke-direct {v1, p0}, Lpu;-><init>(Lpt;)V

    invoke-static {v0, v1}, Laad;->a(Landroid/content/Context;Laar;)V

    .line 1177
    return-void
.end method
