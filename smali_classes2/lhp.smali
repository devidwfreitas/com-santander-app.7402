.class Llhp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkpw;

.field final synthetic b:Llho;


# direct methods
.method constructor <init>(Llho;Lkpw;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Llhp;->b:Llho;

    iput-object p2, p0, Llhp;->a:Lkpw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Llhp;->b:Llho;

    invoke-static {v0}, Llho;->a(Llho;)Llhr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Llhp;->b:Llho;

    invoke-static {v0}, Llho;->a(Llho;)Llhr;

    move-result-object v0

    iget-object v1, p0, Llhp;->a:Lkpw;

    invoke-interface {v0, v1}, Llhr;->a(Lkpw;)V

    .line 66
    :cond_0
    return-void
.end method
