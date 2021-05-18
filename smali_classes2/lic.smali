.class Llic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkps;

.field final synthetic b:Llib;


# direct methods
.method constructor <init>(Llib;Lkps;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Llic;->b:Llib;

    iput-object p2, p0, Llic;->a:Lkps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Llic;->b:Llib;

    invoke-static {v0}, Llib;->a(Llib;)Llif;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Llic;->b:Llib;

    invoke-static {v0}, Llib;->a(Llib;)Llif;

    move-result-object v0

    iget-object v1, p0, Llic;->a:Lkps;

    invoke-interface {v0, v1}, Llif;->a(Lkps;)V

    .line 127
    :cond_0
    return-void
.end method
