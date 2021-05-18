.class Llkf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llkg;

.field final synthetic b:Lkqi;

.field final synthetic c:Llke;


# direct methods
.method constructor <init>(Llke;Llkg;Lkqi;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Llkf;->c:Llke;

    iput-object p2, p0, Llkf;->a:Llkg;

    iput-object p3, p0, Llkf;->b:Lkqi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Llkf;->c:Llke;

    invoke-static {v0}, Llke;->a(Llke;)Llkh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Llkf;->c:Llke;

    invoke-static {v0}, Llke;->a(Llke;)Llkh;

    move-result-object v0

    iget-object v1, p0, Llkf;->a:Llkg;

    invoke-virtual {v1}, Llkg;->getAdapterPosition()I

    move-result v1

    iget-object v2, p0, Llkf;->b:Lkqi;

    invoke-interface {v0, v1, v2}, Llkh;->a(ILkqi;)V

    .line 58
    :cond_0
    return-void
.end method
