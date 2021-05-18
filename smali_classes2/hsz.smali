.class abstract Lhsz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhqj;


# instance fields
.field private a:Lhso;

.field private b:Lhtb;


# direct methods
.method constructor <init>(Lhso;)V
    .locals 0
    .param p1    # Lhso;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lhsz;->a:Lhso;

    .line 237
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .prologue
    .line 241
    new-instance v0, Lhta;

    invoke-direct {v0, p0}, Lhta;-><init>(Lhsz;)V

    iput-object v0, p0, Lhsz;->b:Lhtb;

    .line 248
    invoke-virtual {p0}, Lhsz;->a()V

    .line 249
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lhsz;->b:Lhtb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhsz;->b:Lhtb;

    invoke-virtual {v0}, Lhtb;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lhsz;->b:Lhtb;

    invoke-virtual {v0}, Lhtb;->run()V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lhsz;->a:Lhso;

    invoke-interface {v0}, Lhso;->a()V

    goto :goto_0
.end method
