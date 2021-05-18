.class Lfpf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lfpe;

.field private c:I


# direct methods
.method constructor <init>(Lfpe;I)V
    .locals 1

    .prologue
    .line 64
    iput-object p1, p0, Lfpf;->b:Lfpe;

    iput p2, p0, Lfpf;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iget v0, p0, Lfpf;->a:I

    iput v0, p0, Lfpf;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lfpf;->b:Lfpe;

    invoke-static {v0}, Lfpe;->a(Lfpe;)Lnez;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lfpf;->b:Lfpe;

    invoke-static {v0}, Lfpe;->a(Lfpe;)Lnez;

    move-result-object v0

    iget v1, p0, Lfpf;->c:I

    invoke-interface {v0, v1}, Lnez;->a(I)V

    .line 73
    :cond_0
    return-void
.end method
