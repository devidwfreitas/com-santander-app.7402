.class final Lmfc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/util/ListUpdateCallback;


# instance fields
.field final synthetic a:Lmec;


# direct methods
.method constructor <init>(Lmec;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lmfc;->a:Lmec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lmfc;->a:Lmec;

    invoke-virtual {v0}, Lmec;->a()Lmda;

    move-result-object v0

    iget-object v1, p0, Lmfc;->a:Lmec;

    invoke-virtual {v1}, Lmec;->a()Lmda;

    move-result-object v1

    iget-object v2, p0, Lmfc;->a:Lmec;

    invoke-virtual {v2}, Lmec;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lmda;->e(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3}, Lmda;->a(IILjava/lang/Object;)V

    .line 102
    return-void
.end method

.method public onInserted(II)V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lmfc;->a:Lmec;

    invoke-virtual {v0}, Lmec;->a()Lmda;

    move-result-object v0

    iget-object v1, p0, Lmfc;->a:Lmec;

    invoke-virtual {v1}, Lmec;->a()Lmda;

    move-result-object v1

    iget-object v2, p0, Lmfc;->a:Lmec;

    invoke-virtual {v2}, Lmec;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lmda;->e(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lmda;->b(II)V

    .line 87
    return-void
.end method

.method public onMoved(II)V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lmfc;->a:Lmec;

    invoke-virtual {v0}, Lmec;->a()Lmda;

    move-result-object v0

    iget-object v1, p0, Lmfc;->a:Lmec;

    invoke-virtual {v1}, Lmec;->a()Lmda;

    move-result-object v1

    iget-object v2, p0, Lmfc;->a:Lmec;

    invoke-virtual {v2}, Lmec;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lmda;->e(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lmda;->d(II)V

    .line 97
    return-void
.end method

.method public onRemoved(II)V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lmfc;->a:Lmec;

    invoke-virtual {v0}, Lmec;->a()Lmda;

    move-result-object v0

    iget-object v1, p0, Lmfc;->a:Lmec;

    invoke-virtual {v1}, Lmec;->a()Lmda;

    move-result-object v1

    iget-object v2, p0, Lmfc;->a:Lmec;

    invoke-virtual {v2}, Lmec;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lmda;->e(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lmda;->c(II)V

    .line 92
    return-void
.end method
