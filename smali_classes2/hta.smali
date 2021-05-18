.class Lhta;
.super Lhtb;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhsz;


# direct methods
.method constructor <init>(Lhsz;)V
    .locals 1

    .prologue
    .line 241
    iput-object p1, p0, Lhta;->a:Lhsz;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lhtb;-><init>(Lhsz;Lhsq;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Lhtb;->run()V

    .line 245
    iget-object v0, p0, Lhta;->a:Lhsz;

    invoke-virtual {v0}, Lhsz;->b()V

    .line 246
    return-void
.end method
