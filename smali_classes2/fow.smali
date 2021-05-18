.class Lfow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lfou;

.field private c:I


# direct methods
.method constructor <init>(Lfou;I)V
    .locals 1

    .prologue
    .line 91
    iput-object p1, p0, Lfow;->b:Lfou;

    iput p2, p0, Lfow;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iget v0, p0, Lfow;->a:I

    iput v0, p0, Lfow;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lfow;->b:Lfou;

    invoke-static {v0}, Lfou;->c(Lfou;)Lnez;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lfow;->b:Lfou;

    invoke-static {v0}, Lfou;->c(Lfou;)Lnez;

    move-result-object v0

    iget v1, p0, Lfow;->c:I

    invoke-interface {v0, v1}, Lnez;->a(I)V

    .line 99
    :cond_0
    return-void
.end method
