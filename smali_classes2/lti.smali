.class Llti;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkuy;

.field final synthetic b:Llth;


# direct methods
.method constructor <init>(Llth;Lkuy;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Llti;->b:Llth;

    iput-object p2, p0, Llti;->a:Lkuy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Llti;->b:Llth;

    invoke-virtual {v0}, Llth;->a()Lltl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Llti;->b:Llth;

    invoke-virtual {v0}, Llth;->a()Lltl;

    move-result-object v0

    iget-object v1, p0, Llti;->a:Lkuy;

    invoke-interface {v0, v1}, Lltl;->a(Lkuy;)V

    .line 82
    :cond_0
    return-void
.end method
