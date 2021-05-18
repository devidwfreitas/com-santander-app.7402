.class Lfqc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lfqb;

.field private c:I


# direct methods
.method constructor <init>(Lfqb;I)V
    .locals 1

    .prologue
    .line 54
    iput-object p1, p0, Lfqc;->b:Lfqb;

    iput p2, p0, Lfqc;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iget v0, p0, Lfqc;->a:I

    iput v0, p0, Lfqc;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lfqc;->b:Lfqb;

    invoke-static {v0}, Lfqb;->a(Lfqb;)Lnez;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lfqc;->b:Lfqb;

    invoke-static {v0}, Lfqb;->a(Lfqb;)Lnez;

    move-result-object v0

    iget v1, p0, Lfqc;->c:I

    invoke-interface {v0, v1}, Lnez;->a(I)V

    .line 63
    :cond_0
    return-void
.end method
