.class Llap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llan;


# direct methods
.method constructor <init>(Llan;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Llap;->a:Llan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Llap;->a:Llan;

    iget-object v0, v0, Llan;->a:Llak;

    invoke-static {v0}, Llak;->a(Llak;)Llal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Llap;->a:Llan;

    iget-object v0, v0, Llan;->a:Llak;

    invoke-static {v0}, Llak;->a(Llak;)Llal;

    move-result-object v0

    invoke-interface {v0}, Llal;->b()V

    .line 114
    :cond_0
    return-void
.end method
