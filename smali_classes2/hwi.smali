.class Lhwi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lhwc;


# direct methods
.method constructor <init>(Lhwc;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lhwi;->a:Lhwc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lhwi;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    if-nez v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lhwi;->a:Lhwc;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lhwc;->a(Lhwc;I)I

    .line 218
    iget-object v0, p0, Lhwi;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    invoke-interface {v0}, Lhvv;->b()V

    .line 219
    iget-object v0, p0, Lhwi;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    iget-object v1, p0, Lhwi;->a:Lhwc;

    invoke-static {v1}, Lhwc;->c(Lhwc;)I

    move-result v1

    invoke-interface {v0, v1}, Lhvv;->a(I)V

    .line 220
    iget-object v0, p0, Lhwi;->a:Lhwc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhwc;->a(Lhwc;Z)V

    .line 221
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 222
    iget-object v0, p0, Lhwi;->a:Lhwc;

    invoke-static {v0}, Lhwc;->b(Lhwc;)Lhuz;

    move-result-object v0

    invoke-interface {v0}, Lhuz;->a()Lhxn;

    move-result-object v0

    invoke-static {v0}, Lhxi;->g(Lhxn;)V

    goto :goto_0
.end method
