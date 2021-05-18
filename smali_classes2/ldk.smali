.class Lldk;
.super Llbb;
.source "SourceFile"


# instance fields
.field final synthetic a:Lldf;


# direct methods
.method constructor <init>(Lldf;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lldk;->a:Lldf;

    invoke-direct {p0}, Llbb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lldk;->a:Lldf;

    invoke-static {v0}, Lldf;->a(Lldf;)Lldl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lldk;->a:Lldf;

    invoke-static {v0}, Lldf;->a(Lldf;)Lldl;

    move-result-object v0

    invoke-interface {v0}, Lldl;->d()V

    .line 150
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lldk;->a:Lldf;

    invoke-static {v0}, Lldf;->a(Lldf;)Lldl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lldk;->a:Lldf;

    invoke-static {v0}, Lldf;->a(Lldf;)Lldl;

    move-result-object v0

    invoke-interface {v0}, Lldl;->a()V

    .line 157
    :cond_0
    return-void
.end method
