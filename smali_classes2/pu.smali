.class Lpu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laar;


# instance fields
.field final synthetic a:Lpt;


# direct methods
.method constructor <init>(Lpt;)V
    .locals 0

    .prologue
    .line 1166
    iput-object p1, p0, Lpu;->a:Lpt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lpu;->a:Lpt;

    iget-object v0, v0, Lpt;->a:Lpc;

    invoke-static {v0}, Lpc;->ab(Lpc;)V

    .line 1170
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lpu;->a:Lpt;

    iget-object v0, v0, Lpt;->a:Lpc;

    invoke-static {v0}, Lpc;->ac(Lpc;)V

    .line 1175
    return-void
.end method
