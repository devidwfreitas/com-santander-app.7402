.class Llln;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkql;

.field final synthetic b:Lllm;


# direct methods
.method constructor <init>(Lllm;Lkql;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Llln;->b:Lllm;

    iput-object p2, p0, Llln;->a:Lkql;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Llln;->b:Lllm;

    invoke-static {v0}, Lllm;->a(Lllm;)Lllp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Llln;->b:Lllm;

    invoke-static {v0}, Lllm;->a(Lllm;)Lllp;

    move-result-object v0

    iget-object v1, p0, Llln;->a:Lkql;

    invoke-interface {v0, v1}, Lllp;->a(Lkql;)V

    .line 62
    :cond_0
    return-void
.end method
