.class Lhwf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhvd;


# instance fields
.field final synthetic a:Lhwc;


# direct methods
.method constructor <init>(Lhwc;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lhwf;->a:Lhwc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lhwf;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lhwf;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    invoke-interface {v0}, Lhvv;->d()V

    .line 163
    iget-object v0, p0, Lhwf;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    invoke-interface {v0}, Lhvv;->e()V

    goto :goto_0
.end method

.method public a(Landroid/text/Spanned;Landroid/text/Spanned;)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lhwf;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lhwf;->a:Lhwc;

    invoke-static {v0, p1}, Lhwc;->a(Lhwc;Landroid/text/Spanned;)Landroid/text/Spanned;

    .line 154
    iget-object v0, p0, Lhwf;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    invoke-interface {v0, p2}, Lhvv;->a(Landroid/text/Spanned;)V

    .line 155
    iget-object v0, p0, Lhwf;->a:Lhwc;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhwc;->a(Lhwc;Z)V

    goto :goto_0
.end method
