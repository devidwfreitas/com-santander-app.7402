.class Lldi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lldf;


# direct methods
.method constructor <init>(Lldf;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lldi;->a:Lldf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lldi;->a:Lldf;

    invoke-static {v0}, Lldf;->a(Lldf;)Lldl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lldi;->a:Lldf;

    invoke-static {v0}, Lldf;->a(Lldf;)Lldl;

    move-result-object v0

    invoke-interface {v0}, Lldl;->c()V

    .line 130
    :cond_0
    return-void
.end method
