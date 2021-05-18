.class Llht;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkqa;

.field final synthetic b:Llhs;


# direct methods
.method constructor <init>(Llhs;Lkqa;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Llht;->b:Llhs;

    iput-object p2, p0, Llht;->a:Lkqa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Llht;->b:Llhs;

    invoke-static {v0}, Llhs;->a(Llhs;)Llhv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Llht;->b:Llhs;

    invoke-static {v0}, Llhs;->a(Llhs;)Llhv;

    move-result-object v0

    iget-object v1, p0, Llht;->a:Lkqa;

    invoke-interface {v0, v1}, Llhv;->a(Lkqa;)V

    .line 68
    :cond_0
    return-void
.end method
