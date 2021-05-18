.class Llux;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmbu;


# instance fields
.field final synthetic a:Lluw;


# direct methods
.method constructor <init>(Lluw;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Llux;->a:Lluw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Llux;->a:Lluw;

    iget-object v0, v0, Lluw;->c:Lluv;

    invoke-static {v0}, Lluv;->b(Lluv;)Llve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Llux;->a:Lluw;

    iget-object v0, v0, Lluw;->c:Lluv;

    invoke-static {v0}, Lluv;->b(Lluv;)Llve;

    move-result-object v0

    invoke-interface {v0, p1}, Llve;->a(Z)V

    .line 146
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 151
    return-void
.end method
